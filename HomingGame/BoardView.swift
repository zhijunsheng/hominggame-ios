import UIKit

class BoardView: UIView {
    let originX : CGFloat = 100
    let originY : CGFloat = 100
    var longOriginX : CGFloat = 67
    var longOriginY : CGFloat = 30
    let side : CGFloat = 66
    var shadowPieceBox     = Set<Piece>()
    var fC : Int = 6395658976
    var fR : Int = 8365464968
    var delegate : HomingDelegate?
    
    override func draw(_ rect: CGRect) {
        longOriginX = originX + side * 8
        longOriginY = originY + side * 8
        drawBoard()
        drawPieces()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        
        fC = Int((first.location(in: self).x - originX) / side)
        
        
        fR = Int((first.location(in: self).y - originY) / side)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let tC : Int = Int((first.location(in: self).x - originX) / side)
        let tR : Int = Int((first.location(in: self).y - originY) / side)
        
        delegate?.movePiece(fC: fC, fR: fR, tC: tC, tR: tR)

    }
    func drawPieces() {
        for piece in shadowPieceBox {
            let piecePath = UIBezierPath(arcCenter: CGPoint(x: originX + side * CGFloat(piece.pieceCol) + side / 2, y: originY + side * CGFloat(piece.pieceRow) + side / 2), radius: 20, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false)
            switch piece.pieceColor {
            case .red:
                UIColor.red.setFill()
            case .yellow:
                UIColor.yellow.setFill()
            case .blue:
                UIColor.blue.setFill()
            case .green:
                UIColor.green.setFill()
            }
            piecePath.fill()
        }
        // CGFloat(i)
    }
    func drawBoard() {
        for i in 0..<2 {
            drawLeft(pointX: originX + CGFloat(i) * 7 * side, pointY: originY, width: side, height: side, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            drawLeft(pointX: originX + CGFloat(i) * 7 * side, pointY: originY + side * 1, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + CGFloat(i) * 7 * side, pointY: originY + side * 2, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + CGFloat(i) * 7 * side, pointY: originY + side * 3, width: side, height: side, color: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
            drawLeft(pointX: originX + CGFloat(i) * 7 * side, pointY: originY + side * 4, width: side, height: side, color: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
            drawLeft(pointX: originX + CGFloat(i) * 7 * side, pointY: originY + side * 5, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + CGFloat(i) * 7 * side, pointY: originY + side * 6, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + CGFloat(i) * 7 * side, pointY: originY + side * 7, width: side, height: side, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            drawRight(pointX: originX, pointY: originY + CGFloat(i) * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            drawRight(pointX: originX + side * 1, pointY: originY + CGFloat(i) * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 2, pointY: originY + CGFloat(i) * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 3, pointY: originY + CGFloat(i) * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
            drawRight(pointX: originX + side * 4, pointY: originY + CGFloat(i) * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
            drawRight(pointX: originX + side * 5, pointY: originY + CGFloat(i) * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 6, pointY: originY + CGFloat(i) * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 7, pointY: originY + CGFloat(i) * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    func drawLeft(pointX: CGFloat, pointY: CGFloat, width: CGFloat, height: CGFloat, color: UIColor) {
        let left = UIBezierPath(rect: CGRect(x: pointX, y: pointY, width: width, height: height))
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        color.setFill()
        left.stroke()
        left.fill()
    }
    func drawRight(pointX: CGFloat, pointY: CGFloat, width: CGFloat, height: CGFloat, color: UIColor) {
        let right = UIBezierPath(rect: CGRect(x: pointX, y: pointY, width: width, height: height))
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        color.setFill()
        right.stroke()
        right.fill()
    }

}
