//
//  ServiceFactoryProtocol.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

protocol serviceFactoryProtocol {
    func createMeetingService() -> MeetingServiceProtocol
}
