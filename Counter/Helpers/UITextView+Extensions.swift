//
//  UITextView+Extensions.swift
//  Counter
//
//  Created by Ilya Pokolev on 19.06.2023.
//

import UIKit

extension UITextView {
    func addTextScroll(_ msg: String) {
        text += msg
        self.scrollRangeToVisible(selectedRange)
    }
}
