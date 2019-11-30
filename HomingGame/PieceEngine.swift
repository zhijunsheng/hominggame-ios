import Foundation

struct PieceEngine {
    
    var pieceBox       = Set<Piece>()
    
    
    mutating func movePiece(fC: Int, fR: Int, tC: Int, tR: Int) {
        guard let movingPiece = pieceAt(c: fC, r: fR) else {
            return
        }
        pieceBox.remove(movingPiece)

        let movedPiece = Piece(pieceCol: tC, pieceRow: tR, pieceColor: movingPiece.pieceColor)
        
        pieceBox.insert(movedPiece)
    }
    
    
    func pieceAt(c: Int, r: Int) -> Piece? {
        for piece in pieceBox {
            if piece.pieceCol == c && piece.pieceRow == r {
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
