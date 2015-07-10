import UIKit
import UnderKeyboard

class ScrollViewController: UIViewController {
  @IBOutlet weak var textView: UITextView!
  var underKeyboardScrollView = UnderKeyboardScrollView()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    underKeyboardScrollView.setup(textView, bottomLayoutGuide: bottomLayoutGuide)
  }
  
  @IBAction func didTapCloseJKeyboard(sender: AnyObject) {
    textView.resignFirstResponder()
  }
}
