//
//  Date+Extention.swift
//  Counter
//
//  Created by Ilya Pokolev on 19.06.2023.
//

import Foundation

extension Date {
    var strDateTimeNoTimezone: String {
        let dateCurrent = Date()
        let format = DateFormatter()
        format.timeStyle = .short
        format.timeZone = .none
        format.dateStyle = .long
        let dateStr = format.string(from: dateCurrent)
        
        return dateStr
    }
}
