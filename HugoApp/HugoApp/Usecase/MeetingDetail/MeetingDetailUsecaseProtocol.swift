//
//  MeetingDetailUsecaseProtocol.swift
//  HugoApp
//
//  Created by Filipe Faria on 22/04/21.
//

import Foundation

protocol MeetingDetailUsecaseProtocol {
    func execute(id: String, completion: @escaping ((ServiceResponse<MeetingModel, ServiceError>) -> Void))
}
