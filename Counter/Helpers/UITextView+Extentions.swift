//
//  UITextView+Extentions.swift
//  Counter
//
//  Created by Ilya Pokolev on 19.06.2023.
//

import Foundation
import UIKit

extension UITextView {
    func scrollToTextEnd() {
        let range = NSMakeRange(text.count - 1, 0)
        self.scrollRangeToVisible(range)
    }
    
    
}
