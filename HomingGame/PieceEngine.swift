import Foundation

struct PieceEngine {
    
    var pieceBox = Set<Piece>()
    
    
    
    mutating func addPiece() {
        pieceBox.insert(Piece())
    }
}
