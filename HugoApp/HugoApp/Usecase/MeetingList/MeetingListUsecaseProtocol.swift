//
//  MeetingListUsecaseProtocol.swift
//  HugoApp
//
//  Created by Filipe Faria on 22/04/21.
//

import Foundation

protocol MeetingListUsecaseProtocol {
    func execute(completion: @escaping ((ServiceResponse<[MeetingModel], ServiceError>) -> Void))
}
