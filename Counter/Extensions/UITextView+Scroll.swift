//
//  UITextView+Scroll.swift
//  Counter
//
//  Created by Ilya Pokolev on 03.01.2026.
//

import UIKit

extension UITextView {
    func addTextScrollToBottom(_ textToAdd: String) {
        self.text += textToAdd
        let range = NSMakeRange(text.count - 1, 1);
        scrollRangeToVisible(range);
    }
}
