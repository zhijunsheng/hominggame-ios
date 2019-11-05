import Foundation

struct PieceEngine {
    
    var pieceBox = Set<Piece>()
    
    
    
    mutating func resetPieces() {
        pieceBox.insert(Piece(pieceCol: 0, pieceRow: 0, pieceColor: .red))
        pieceBox.insert(Piece(pieceCol: 7, pieceRow: 0, pieceColor: .yellow))
        pieceBox.insert(Piece(pieceCol: 0, pieceRow: 7, pieceColor: .blue))
        pieceBox.insert(Piece(pieceCol: 7, pieceRow: 7, pieceColor: .green))
    }
}
