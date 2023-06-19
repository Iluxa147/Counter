//
//  utils.swift
//  Counter
//
//  Created by Ilya Pokolev on 19.06.2023.
//

import Foundation

func getDateTimeCurrentStr() -> String {
    let dateTimeCurrent = Date()
    return dateTimeCurrent.strDateTimeNoTimezone
}
