//
//  Date+Extensions.swift
//  Counter
//
//  Created by Ilya Pokolev on 19.06.2023.
//

import Foundation

private let dateFormatRuSimpleStr = "dd.MM.yyyy HH:mm"
private let dateFormatterRuSimple = DateFormatterCustomFormat(dateFormatRuSimpleStr)

struct DateFormatterCustomFormat {
    let formatter: DateFormatter
    
    init(_ formatStr: String) {
        formatter = DateFormatter()
        formatter.dateFormat = formatStr
    }
}

extension Date {
    func getDateSrt(_ formatter: DateFormatter) -> String {
        return formatter.string(from: self)
    }
}

func getDateTimeCurrentStr() -> String {
    let dateTimeCurrent = Date()
    return dateTimeCurrent.getDateSrt(dateFormatterRuSimple.formatter)
}
