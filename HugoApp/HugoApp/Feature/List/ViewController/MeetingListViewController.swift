//
//  MeetingListViewController.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import UIKit

class MeetingListViewController: UIViewController, MeetingListViewControllerProtocol {
    let contentView: MeetingListViewProtocol
    let viewModel: MeetingViewModelProtocol
    let service: MeetingService

    init(contentView: MeetingListViewProtocol, viewModel: MeetingViewModelProtocol) {
        self.contentView = contentView
        self.viewModel = viewModel
        service = MeetingService()
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(contentView)
        contentView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

        service.requestMeetList { response in
            print(response)
        }
    }
}
