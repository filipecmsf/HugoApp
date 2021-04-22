//
//  ServiceFactory.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

class ServiceFactory: serviceFactoryProtocol {
    func createMeetingService() -> MeetingServiceProtocol {
        return MeetingService()
    }
}
