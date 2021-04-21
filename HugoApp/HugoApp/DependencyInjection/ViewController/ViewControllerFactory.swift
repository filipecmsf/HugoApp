//
//  ViewControllerFactory.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

class ViewControllerFactory: ViewControllerFactoryProtocol {

    var viewModelFactory: ViewModelFactoryProtocol

    init(viewModelFactory: ViewModelFactoryProtocol) {
        self.viewModelFactory = viewModelFactory
    }

    func createMeetingListViewController() -> MeetingListViewControllerProtocol {
        return MeetingListViewController()
    }
}
