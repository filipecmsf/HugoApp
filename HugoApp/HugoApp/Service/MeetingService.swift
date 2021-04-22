//
//  MeetListService.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation
import Alamofire

class MeetingService: MeetingServiceProtocol {
    let service = Service()
    func requestMeetList(completion: @escaping ((ServiceResponse) -> Void)) {
        service.request(url: "https://hg-ios-test.s3-us-west-2.amazonaws.com/meetings.json",
                        model: [MeetingModel].self) { response in
            completion(response)
        }
    }

    func requestMeetDetail(id: String, completion: @escaping ((ServiceResponse) -> Void)) {
        service.request(url: "https://hg-ios-test.s3-us-west-2.amazonaws.com/meetings/\(id).json",
                        model: MeetingModel.self) { response in
            completion(response)
        }
    }
}
