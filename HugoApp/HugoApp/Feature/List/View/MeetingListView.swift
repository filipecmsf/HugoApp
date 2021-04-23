//
//  MeetingListView.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import UIKit

class MeetingListView: UIView, MeetingListViewProtocol {

    let dataSource = MeetingListTableDataSource()

    private var tableView: UITableView = {
        var variable = UITableView()
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.separatorStyle = .none
        return variable
    }()

    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setup()

        tableView.register(MeetingCellView.self, forCellReuseIdentifier: "MeetingCellView")
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        setupHierarchy()
        setupConstraints()
    }

    private func setupHierarchy() {
        addSubview(tableView)
    }

    private func setupConstraints() {
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
    }

    func updateState(state: MeetingListState) {
        switch state {
            case .loading:
                print("")
            case .data(let data):
                dataSource.data = data
                tableView.reloadData()
            case .error:
                print("")
        }
    }
}
