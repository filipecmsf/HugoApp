//
//  MeetingDetailUsecase.swift
//  HugoApp
//
//  Created by Filipe Faria on 22/04/21.
//

import Foundation

class MeetingDetailUsecase: MeetingDetailUsecaseProtocol {
    let service: MeetingServiceProtocol

    init(service: MeetingServiceProtocol) {
        self.service = service
    }

    func execute(id: String, completion: @escaping ((ServiceResponse<MeetingModel, ServiceError>) -> Void)) {
        service.requestMeetDetail(id: id) { response in
            print(response)
        }
    }
}
