//
//  UITextView+Extentions.swift
//  Counter
//
//  Created by Ilya Pokolev on 19.06.2023.
//

import Foundation
import UIKit

extension UITextView {
    func addTextScroll(_ msg: String) {
        text += msg
        self.scrollRangeToVisible(selectedRange)
    }
}
