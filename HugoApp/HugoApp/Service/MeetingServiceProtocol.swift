//
//  MeetListServiceProtocol.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

protocol MeetingServiceProtocol {
    func requestMeetList(completion: @escaping ((ServiceResponse) -> Void))
    func requestMeetDetail(id: String, completion: @escaping ((ServiceResponse) -> Void))
}
