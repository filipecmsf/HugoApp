//
//  ViewModelFactoryProtocol.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

protocol ViewModelFactoryProtocol {
    var usecaseFactory: UsecaseFactoryProtocol {get set}

    func createMeetingViewModel() -> MeetingViewModelProtocol
}
