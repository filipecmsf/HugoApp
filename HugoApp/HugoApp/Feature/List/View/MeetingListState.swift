//
//  MeetingListState.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

enum MeetingListState {
    case loading
    case error
    case data([MeetingCellViewEntity])
}
