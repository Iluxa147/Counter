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
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        let dateStr = formatter.string(from: dateCurrent)
        
        return dateStr
    }
}

func getDateTimeCurrentStr() -> String {
    let dateTimeCurrent = Date()
    return dateTimeCurrent.strDateTimeNoTimezone
}
