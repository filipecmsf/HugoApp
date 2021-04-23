//
//  MeetListModel.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

struct MeetingModel: Codable {
    let id: String
    let startAt: Date
    let endAt: Date?
    let title: String?
    let htmlContent: String?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(String.self, forKey: .id)
        title = try container.decodeIfPresent(String.self, forKey: .title)
        htmlContent = try container.decodeIfPresent(String.self, forKey: .htmlContent)

        let startAtString = try container.decode(String.self, forKey: .startAt)
        startAt = startAtString.convertToDate()

        let endAtString = try container.decodeIfPresent(String.self, forKey: .endAt)
        endAt = endAtString?.convertToDate()
    }
}
