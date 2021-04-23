//
//  MeetingViewModelProtocol.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

protocol MeetingViewModelProtocol {
    var openMeetingWithId: ((String) -> Void)? {get set}
    var updateViewState: ((MeetingListState) -> Void)? {get set}
    func requestData()
    func meetingSelected(index: Int)
}
