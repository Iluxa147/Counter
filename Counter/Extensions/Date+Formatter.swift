//
//  Date+Formatter.swift
//  Counter
//
//  Created by Ilya Pokolev on 03.01.2026.
//

import Foundation

extension Date {
    static func formatRu() -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ru_RU")
        formatter.dateFormat = "dd-MMM-yyyy HH:mm:ss"
        
        return formatter.string(from: Date.now)
    }
}
