//
//  ServiceError.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

enum ServiceError: Error {
    case error(Int, String)
}
