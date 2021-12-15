import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var setLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        range()
        set()
    }
    
    func range() {
        guard let text = rangeLabel.text else {
            return
        }
        
        let attributedString = NSMutableAttributedString(string: text)
        
        attributedString.addAttribute(.font, value: UIFont.preferredFont(forTextStyle: .title1), range:  (text as NSString).range(of: "range"))
        
        rangeLabel.attributedText = attributedString
        rangeLabel.adjustsFontForContentSizeCategory = true
    }
    
    func set() {
        guard let text = setLabel.text else {
            return
        }
        let attributeString = NSMutableAttributedString(string: text)
        
        let attributes: [NSMutableAttributedString.Key: Any] = [.font: UIFont.preferredFont(forTextStyle: .title1)]
        
        attributeString.append(NSAttributedString(string: "set", attributes: attributes))
        
        setLabel.attributedText = attributeString
        setLabel.adjustsFontForContentSizeCategory = true
    }
}

