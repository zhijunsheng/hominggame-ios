import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oneToSixLabel: UILabel!
    @IBOutlet weak var whosTurnLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oneToSixLabel.text = "1"
        whosTurnLabel.text = "Red Player's Turn"
    }
    
    @IBAction func change(_ sender: Any) {
        let oneToSix = arc4random() % 6 + 1
        oneToSixLabel.text = "\(oneToSix)"
        
    }
    
}

