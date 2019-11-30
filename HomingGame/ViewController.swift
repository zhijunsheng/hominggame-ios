import UIKit

class ViewController: UIViewController, HomingDelegate{
    
    
    
    
    
    @IBOutlet weak var boardView: BoardView!
    @IBOutlet weak var oneToSixLabel: UILabel!
    @IBOutlet weak var whosTurnLabel: UILabel!
    
    
    var pieceEngine = PieceEngine()
    var whosTurn = PlayerColor.red
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oneToSixLabel.text = "\(Int(arc4random() % 6 + 1))"
        whosTurnLabel.text = "Red Player's Turn"
        pieceEngine.resetPieces()
        boardView.shadowPieceBox = pieceEngine.pieceBox
        boardView.delegate = self
    }
    func movePiece(fC: Int, fR: Int, tC: Int, tR: Int) {
        pieceEngine.movePiece(fC: fC, fR: fR, tC: tC, tR: tR)
        boardView.shadowPieceBox = pieceEngine.pieceBox
        boardView.setNeedsDisplay()
    }
    @IBAction func change(_ sender: Any) {
        let oneToSix = Int(arc4random() % 6 + 1)
        oneToSixLabel.text = "\(oneToSix)"
        
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

