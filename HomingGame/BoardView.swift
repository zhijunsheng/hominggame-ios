import UIKit

class BoardView: UIView {
    let originX   = 100
    let originY   = 100
    var longOriginX = 67
    var longOriginY = 30
    let side = 66
    
    
    
    override func draw(_ rect: CGRect) {
        longOriginX = originX + side * 8
        longOriginY = originY + side * 8
        drawBoard()
        drawPieces()
    }
    
    func drawPieces() {
        let red = UIBezierPath(arcCenter: CGPoint(x: originX / 2, y: originY / 2), radius: 20, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false)
        #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1).setStroke()
        red.stroke()
        let yellow = UIBezierPath(arcCenter: CGPoint(x: longOriginX + originX / 2, y: originY / 2), radius: 20, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false)
        #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1).setStroke()
        yellow.stroke()
        let blue = UIBezierPath(arcCenter: CGPoint(x: originX / 2, y: longOriginY + originY / 2), radius: 20, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false)
        #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1).setStroke()
        blue.stroke()
        let green = UIBezierPath(arcCenter: CGPoint(x: longOriginX + originX / 2, y: longOriginY + originY / 2), radius: 20, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise:  false)
        #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1).setStroke()
        green.stroke()
    }
    func drawBoard() {
        for i in 0..<2 {
            drawLeft(pointX: originX + i * 7 * side, pointY: originY, width: side, height: side, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 1, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 2, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 3, width: side, height: side, color: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 4, width: side, height: side, color: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 5, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 6, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 7, width: side, height: side, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            drawRight(pointX: originX, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            drawRight(pointX: originX + side * 1, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 2, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 3, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
            drawRight(pointX: originX + side * 4, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))
            drawRight(pointX: originX + side * 5, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 6, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 7, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    func drawLeft(pointX: Int, pointY: Int, width: Int, height: Int, color: UIColor) {
        let left = UIBezierPath(rect: CGRect(x: pointX, y: pointY, width: width, height: height))
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        color.setFill()
        left.stroke()
        left.fill()
    }
    func drawRight(pointX: Int, pointY: Int, width: Int, height: Int, color: UIColor) {
        let right = UIBezierPath(rect: CGRect(x: pointX, y: pointY, width: width, height: height))
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        color.setFill()
        right.stroke()
        right.fill()
    }

}
