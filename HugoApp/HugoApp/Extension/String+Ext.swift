//
//  String+Ext.swift
//  HugoApp
//
//  Created by Filipe Faria on 22/04/21.
//

import Foundation

extension String {
    func convertToDate() -> Date {
        let dateFormatter = ISO8601DateFormatter()
        return dateFormatter.date(from:self) ?? Date()
    }
}
