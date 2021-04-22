//
//  MeetListModel.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

struct MeetingModel: Codable {
    let id: String
    let startAt: String
    let endAt: String?
    let title: String?
    let htmlContent: String?
}
