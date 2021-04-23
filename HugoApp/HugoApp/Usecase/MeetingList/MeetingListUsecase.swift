//
//  MeetingListUsecase.swift
//  HugoApp
//
//  Created by Filipe Faria on 22/04/21.
//

import Foundation

class MeetingListUsecase: MeetingListUsecaseProtocol {

    let service: MeetingServiceProtocol

    init(service: MeetingServiceProtocol) {
        self.service = service
    }

    func execute(completion: @escaping ((ServiceResponse<[MeetingModel], ServiceError>) -> Void)) {
        service.requestMeetList { response in
            completion(response)
        }
    }
}
