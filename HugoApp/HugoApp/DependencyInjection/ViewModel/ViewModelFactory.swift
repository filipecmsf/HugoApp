//
//  ViewModelFactory.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

class ViewModelFactory: ViewModelFactoryProtocol {

    var usecaseFactory: UsecaseFactoryProtocol

    init(usecaseFactory: UsecaseFactoryProtocol) {
        self.usecaseFactory = usecaseFactory
    }

    func createMeetingViewModel() -> MeetingViewModelProtocol {
        return MeetingViewModel(usecase: usecaseFactory.createMeetingListUsecase())
    }
}
