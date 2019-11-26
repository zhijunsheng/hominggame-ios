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
    }
    
}

