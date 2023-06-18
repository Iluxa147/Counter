//
//  ViewController.swift
//  Counter
//
//  Created by Ilya Pokolev on 18.06.2023.
//

import UIKit

extension Date {
    var strDateTimeNoTimezone: String {
        let mytime = Date()
        let format = DateFormatter()
        format.timeStyle = .short
        format.timeZone = .none
        format.dateStyle = .long
        let dateStr = format.string(from: mytime)
        //print(format.string(from: mytime))
        
        return dateStr
    }
}

extension UITextView {
   func scrollToTextEnd() {
           let range = NSMakeRange((text?.count ?? 0) - 1, 0)
           self.scrollRangeToVisible(range)
   }
    
    /*
    var text: String? {
        set {
            self.text = newValue
            scrollToTextEnd()
        }
        get {
            return self.text
        }
    }
    */
}

class ViewController: UIViewController {
    
    var counter: Int = 0
    
    @IBOutlet weak var labelCounter: UILabel!
    
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonSub: UIButton!
    @IBOutlet weak var buttonResetCounter: UIButton!
    
    @IBOutlet weak var textViewLog: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textViewLog.text = "History\n\n"
        
        //updateCounterLabel()
    }
    
    @IBAction func buttonPlusTouch(_ sender: Any) {
        counter += 1
        updateCounterLabel()
        
        textViewLog.text += "\(getDateTimeCurrentStr()) value was changed +1\n"
        textViewLog.scrollToTextEnd()
    }
    
    @IBAction func buttonSubTouch(_ sender: Any) {
        if counter == 0 {
            textViewLog.text += "\(getDateTimeCurrentStr()) trying to set counter value < 0 \n"
            textViewLog.scrollToTextEnd()
            
            return
        }
        
        counter -= 1
        updateCounterLabel()
        
        textViewLog.text += "\(getDateTimeCurrentStr()) value was changed -1\n"
        textViewLog.scrollToTextEnd()
    }
    
    @IBAction func buttonResetTouch(_ sender: Any) {
        counter = 0
        updateCounterLabel()
        
        textViewLog.text += "\(getDateTimeCurrentStr()) value was reseted\n"
        textViewLog.scrollToTextEnd()
    }   
    
    private func updateCounterLabel() {
        labelCounter.text = "Counter value: \(counter)"
        
    }
    
    private func getDateTimeCurrentStr() -> String {
        let dateTimeCurrent = Date()
        return dateTimeCurrent.strDateTimeNoTimezone
    }
}

