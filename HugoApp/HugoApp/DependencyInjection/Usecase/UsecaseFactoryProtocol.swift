//
//  UsecaseFactoryProtocol.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

protocol UsecaseFactoryProtocol {
    var serviceFactory: serviceFactoryProtocol {get set}
    func createMeetingListUsecase() -> MeetingListUsecaseProtocol
    func createMeetingDetailUsecase() -> MeetingDetailUsecaseProtocol
}
