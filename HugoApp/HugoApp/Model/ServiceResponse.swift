//
//  ServiceResponse.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

enum ServiceResponse {
    case success(Decodable)
    case error(ServiceError)
}
