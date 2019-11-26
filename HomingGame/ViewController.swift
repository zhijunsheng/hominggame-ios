import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boardView: BoardView!
    @IBOutlet weak var oneToSixLabel: UILabel!
    @IBOutlet weak var whosTurnLabel: UILabel!
    
    
    var pieceEngine = PieceEngine()
    var whosTurn = PlayerColor.red
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oneToSixLabel.text = "1"
        whosTurnLabel.text = "Red Player's Turn"
        pieceEngine.resetPieces()
        boardView.shadowPieceBox = pieceEngine.pieceBox
    }
    
    @IBAction func change(_ sender: Any) {
        let oneToSix = Int(arc4random() % 6 + 1)
        oneToSixLabel.text = "\(oneToSix)"
        pieceEngine.movePiece(piece: whosTurn, meter: oneToSix)
        boardView.shadowPieceBox = pieceEngine.pieceBox
        boardView.setNeedsDisplay()
        if whosTurn == PlayerColor.red {
            whosTurn = PlayerColor.yellow
            whosTurnLabel.text = "Yellow Player's Turn"
        } else if whosTurn == PlayerColor.yellow {
            whosTurn = PlayerColor.blue
            whosTurnLabel.text = "Blue Player's Turn"
        } else if whosTurn == PlayerColor.blue {
            whosTurn = PlayerColor.green
            whosTurnLabel.text = "Green Player's Turn"
        } else if whosTurn == PlayerColor.green {
            whosTurn = PlayerColor.red
            whosTurnLabel.text = "Red Player's Turn"
        }
        
    }
    
}

