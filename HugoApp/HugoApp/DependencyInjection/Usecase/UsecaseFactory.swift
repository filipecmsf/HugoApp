//
//  UsecaseFactory.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

class UsecaseFactory: UsecaseFactoryProtocol {
    var serviceFactory: serviceFactoryProtocol

    init(serviceFactory: serviceFactoryProtocol) {
        self.serviceFactory = serviceFactory
    }

    func createMeetingListUsecase() -> MeetingListUsecaseProtocol {
        return MeetingListUsecase(service: serviceFactory.createMeetingService())
    }

    func createMeetingDetailUsecase() -> MeetingDetailUsecaseProtocol {
        return MeetingDetailUsecase(service: serviceFactory.createMeetingService())
    }
}
