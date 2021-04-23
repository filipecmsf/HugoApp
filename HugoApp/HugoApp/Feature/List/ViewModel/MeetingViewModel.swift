//
//  MeetingViewModel.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import Foundation

class MeetingViewModel: MeetingViewModelProtocol {

    var openMeetingWithId: ((String) -> Void)?
    var updateViewState: ((MeetingListState) -> Void)?
    var meetings: [MeetingModel]?
    var usecase: MeetingListUsecaseProtocol

    init(usecase: MeetingListUsecaseProtocol) {
        self.usecase = usecase
    }

    func requestData() {
        usecase.execute { [weak self] response in
            guard let strongSelf = self else { return }
            switch response {
            case .success(let data):
                strongSelf.meetings = data
                strongSelf.updateViewState?(.data(strongSelf.formatToCellViewEntity()))
            case .error(let error):
                print(error)
            }
        }
    }

    func meetingSelected(index: Int) {
        
    }

    private func formatToCellViewEntity() -> [MeetingCellViewEntity] {
        var cellViewEntity: [MeetingCellViewEntity] = []
        for entity in meetings ?? [] {
            cellViewEntity.append(MeetingCellViewEntity(isToday: true, title: entity.title ?? "", scheduleTime: "asd asdasd asd"))
        }
        return cellViewEntity
    }
}
