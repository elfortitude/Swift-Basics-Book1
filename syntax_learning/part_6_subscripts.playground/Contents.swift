import UIKit

// Task 1
class Chessman {
    enum ChessmanColor {
        case black, white
    }
    enum ChessmanType {
        case king, castle, bishop, pawn, knight, queen
    }
    let color : ChessmanColor
    let type : ChessmanType
    var coordinates : (String, Int)? = nil
    let symbol : Character
    init(color : ChessmanColor, type : ChessmanType, symbol: Character) {
        self.color = color
        self.type = type
        self.symbol = symbol
    }
    init(color : ChessmanColor, type : ChessmanType, coordinates : (String, Int), symbol : Character) {
        self.color = color
        self.type = type
        self.symbol = symbol
        self.setCoordinates(char: coordinates.0, num: coordinates.1)
    }
    func setCoordinates(char : String, num : Int) {
        self.coordinates = (char, num)
    }
    func kill() {
        self.coordinates = nil
    }
}

class GameDesk {
    var desk : [Int : [String : Chessman]] = [:]
    init() {
        for i in 0...7 {
            self.desk[i] = [:]
        }
    }
    subscript (alpha : String, num: Int) -> Chessman? {
        get {
            return self.desk[num - 1]![alpha]
        }
        set {
            if let chessman = newValue {
                self.setChessman(chess: chessman, coordinates: (alpha, num))
            } else {
                let chess = self.desk[num - 1]![alpha]
                chess!.kill()
                self.desk[num - 1]![alpha] = nil
            }
        }
    }
    func setChessman(chess: Chessman, coordinates: (String, Int)){
        let rowRanges = 1...8
        let colRange = "A"..."H"
        if rowRanges.contains(Int(coordinates.1)) && colRange.contains(String(coordinates.0)) {
            self.desk[Int(coordinates.1) - 1]![coordinates.0] = chess
            chess.setCoordinates(char: coordinates.0, num: coordinates.1)
        } else {
            print("Coordinates out of range")
        }
    }
    func printDesk() {
        for i in 0...(desk.count - 1) {
            print("\(i + 1) ", terminator: "")
            for j in Unicode.Scalar("A").value...Unicode.Scalar("H").value {
                print("\(self.desk[i]![String(format: "%c", j)]?.symbol ?? "_") ", terminator: "")
            }
            print("")
        }
        print("  A B C D E F G H")
    }
}

var game = GameDesk()
var queenBlack = Chessman(color: .black, type: .queen, coordinates: ("A", 6), symbol: "\u{265B}")
game["C", 5] = queenBlack
//game["C", 5]
//game["C", 5] = nil
//game["C", 5]
queenBlack.coordinates
game.printDesk()
