import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fortuneLabel: UILabel!
    
    // create a list (array) of fortunes
    let fortunes = ["Outcome Unclear",
                    "Try Again Later",
                    "It Is Decidedly So",
                    "NO!",
                    "Ask Again Tomorrow",
                    "Looking Good, Homie",
                    "Without A Doubt",
                    "My Sources Say No",
                    "Signs Point to Yes",
                    "Yes, You Can Count On It",
                    "Ask Me If I Care",
                    "Yeah And I'm The Pope",
                    "You've Got To Be Kidding...",
                    "Pure Genius!",
                    "The Sky's The Limit",
                    "You're A Winner!"]
    
    // register for shake events (become first responder)
    override var canBecomeFirstResponder: Bool {return true}
    
    // implement motionEnded callback
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        // get a random number
        let randomNumber = Int(arc4random_uniform(UInt32(fortunes.count)))
        
        // get a fotune with that number
        let fortune = fortunes[randomNumber]
        
        // set the label to that fortune
        fortuneLabel.text = fortune.uppercased()
    }
}

