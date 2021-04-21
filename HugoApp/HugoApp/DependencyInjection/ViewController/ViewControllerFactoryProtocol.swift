//
//  ViewControllerFactoryProtocol.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

protocol ViewControllerFactoryProtocol {
    var viewModelFactory: ViewModelFactoryProtocol {get set}
    func createMeetingListViewController() -> MeetingListViewControllerProtocol
}
