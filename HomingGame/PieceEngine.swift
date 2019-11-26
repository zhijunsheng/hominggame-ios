import Foundation

struct PieceEngine {
    
    var pieceBox       = Set<Piece>()
    
    
    mutating func movePiece(piece: PlayerColor, meter: Int) {
        guard let movingPiece = pieceWithColor(color: piece) else {
            return
        }
        pieceBox.remove(movingPiece)
//        let line = 7
//
////        movingPiece.pieceCol-        let line = 7
//
//        var leftSteps = movingPiece.pieceCol + (meter - (line - movingPiece.pieceCol))
//        var rowPlusMove = movingPiece.pieceRow + leftSteps
//        var a = 11111111
//        var b = 22222222
//        if movingPiece.pieceRow == 0 {
//            if line - movingPiece.pieceCol < meter {
//
//                a = 3
//                b = 6
//            } else {
//                a = 5
//                b = 2
//            }
//        }
        let movedPiece = Piece(pieceCol: movingPiece.pieceCol + meter, pieceRow: 0, pieceColor: movingPiece.pieceColor)
        
        pieceBox.insert(movedPiece)
    }
    func pieceWithColor(color: PlayerColor) -> Piece? {
        for piece in pieceBox {
            if piece.pieceColor == color {
                return piece
            }
        }
        return nil
    }
    mutating func resetPieces() {
        pieceBox.insert(Piece(pieceCol: 0, pieceRow: 0, pieceColor: .red))
        pieceBox.insert(Piece(pieceCol: 7, pieceRow: 0, pieceColor: .yellow))
        pieceBox.insert(Piece(pieceCol: 0, pieceRow: 7, pieceColor: .blue))
        pieceBox.insert(Piece(pieceCol: 7, pieceRow: 7, pieceColor: .green))
    }
}
