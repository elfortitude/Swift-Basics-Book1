import UIKit

public class Balls: UIView {
//      Список цветоы для шариков
    private var colors: [UIColor]
//      Шарики
    private var balls: [UIView] = []
//      Размер шариков
    private var ballSize: CGSize = CGSize(width: 40, height: 40)
//      Аниматор графических объектов
    private var animator: UIDynamicAnimator?
//      Обработчик перемещений объектов
    private var snapBehavior: UISnapBehavior?
//      Обработчик столкновений
    private var collisionBehavior: UICollisionBehavior
    
    public init(colors: [UIColor]) {
        self.colors = colors
        collisionBehavior = UICollisionBehavior(items: [])
//      Указание на то, что границы отображения также являются объектами взаимодействия
        collisionBehavior.setTranslatesReferenceBoundsIntoBoundary(with: UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1))
        super.init(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        backgroundColor = UIColor.gray
//      Подключаем аниматор с указанием на сам класс
        animator = UIDynamicAnimator(referenceView: self)
//      Вызов функции отрисовки шариков
        ballsView()
//      Обработчик поведения при коллизиях
        animator?.addBehavior(collisionBehavior)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//      Отображение шариков
    func ballsView() {
//      Перебор переданных цветов, они определяют количество шариков
        for (index, color) in  colors.enumerated() {
            let ball = UIView(frame: CGRect.zero)
            ball.backgroundColor = color
//      Накладываем отображение шарика на отображение подложки
            addSubview(ball)
//      Добавляем экземпляр шарика в массив шариков
            balls.append(ball)
//      Вычисляем отступ шарика по осям X и Y, каждый последующий шарик
//      должен быть правее и ниже предыдущего
            let origin = 40 * index + 100
//      Отображение шарика в виде прямоугольника
            ball.frame = CGRect(x: origin, y: origin, width: Int(ballSize.width), height: Int(ballSize.height))
//      С закругленными углами
            ball.layer.cornerRadius = ball.bounds.width / 2.0
            collisionBehavior.addItem(ball)
        }
    }
    
//      Метод вызывается в момент касания экрана
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location(in: self)
            for ball in balls {
                if ball.frame.contains(touchLocation) {
                    snapBehavior = UISnapBehavior(item: ball, snapTo: touchLocation)
                    snapBehavior?.damping = 0.5
                    animator?.addBehavior(snapBehavior!)
                }
            }
        }
    }
    
//      Метод срабатывает при каждом перемещении пальца, уже коснувшегося экрана
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location(in: self)
            if let snapBehavior = snapBehavior {
                snapBehavior.snapPoint = touchLocation
            }
        }
    }
//      Метод вызывается по окончании взаимодействия с экраном (когда палец убран)
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let snapBehavior = snapBehavior {
            animator?.removeBehavior(snapBehavior)
        }
        snapBehavior = nil
    }
}
