import UIKit

class BoardView: UIView {
    let originX   = 100
    let originY   = 100
    let side = 66
    
    
    
    override func draw(_ rect: CGRect) {
        for i in 0..<2 {
            drawLeft(pointX: originX + i * 7 * side, pointY: originY, width: side, height: side, color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 1, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 2, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 3, width: side, height: side, color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 4, width: side, height: side, color: #colorLiteral(red: 0.7460491061, green: 0.1685091257, blue: 0.1515918076, alpha: 1))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 5, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 6, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawLeft(pointX: originX + i * 7 * side, pointY: originY + side * 7, width: side, height: side, color: #colorLiteral(red: 0.9594833255, green: 0.7051914334, blue: 0.2614954412, alpha: 1))
            drawRight(pointX: originX, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.9594833255, green: 0.7051914334, blue: 0.2614954412, alpha: 1))
            drawRight(pointX: originX + side * 1, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 2, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 3, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
            drawRight(pointX: originX + side * 4, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.7460491061, green: 0.1685091257, blue: 0.1515918076, alpha: 1))
            drawRight(pointX: originX + side * 5, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 6, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            drawRight(pointX: originX + side * 7, pointY: originY + i * 7 * side, width: side, height: side, color: #colorLiteral(red: 0.9594833255, green: 0.7051914334, blue: 0.2614954412, alpha: 1))
        }
    }
    func drawLeft(pointX: Int, pointY: Int, width: Int, height: Int, color: UIColor) {
        let left = UIBezierPath(rect: CGRect(x: pointX, y: pointY, width: width, height: height))
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        color.setFill()
        left.stroke()
        left.fill()
//        print(bounds.width)
//        print(bounds.height)
    }
    func drawRight(pointX: Int, pointY: Int, width: Int, height: Int, color: UIColor) {
        let right = UIBezierPath(rect: CGRect(x: pointX, y: pointY, width: width, height: height))
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        color.setFill()
        right.stroke()
        right.fill()
    }

}
