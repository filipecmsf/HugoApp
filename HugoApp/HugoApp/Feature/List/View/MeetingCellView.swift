//
//  MeetingCellView.swift
//  HugoApp
//
//  Created by Filipe Faria on 22/04/21.
//

import UIKit

class MeetingCellView: UITableViewCell {

    private var containerView: UIView = {
        var variable = UIView()
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.layer.cornerRadius = 5
        variable.layer.borderWidth = 2
        return variable
    }()

    private var mainStack: UIStackView = {
        var variable = UIStackView()
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.axis = .vertical
        return variable
    }()

    private var titleStack: UIStackView = {
        var variable = UIStackView()
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.axis = .horizontal
        return variable
    }()

    private var titleLabel: UILabel = {
        var variable = UILabel()
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.text = "asdfasdff sd fds"
        return variable
    }()

    private var todayLabel: UILabel = {
        var variable = UILabel()
        variable.translatesAutoresizingMaskIntoConstraints = false

        variable.text = "asdfasdff sd fds"
        return variable
    }()

    private var scheduleTimeLabel: UILabel = {
        var variable = UILabel()
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.text = "asdfasdff sd fds"
        return variable
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "MeetingCellView")
        translatesAutoresizingMaskIntoConstraints = false
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        setupHierarchy()
        setupConstraints()
    }

    private func setupHierarchy() {
        contentView.addSubview(containerView)

        containerView.addSubview(mainStack)

        mainStack.addArrangedSubview(titleStack)
        mainStack.addArrangedSubview(scheduleTimeLabel)

        titleStack.addArrangedSubview(titleLabel)
        titleStack.addArrangedSubview(todayLabel)
    }

    private func setupConstraints() {
        containerView.topAnchor.constraint(equalTo: contentView.topAnchor,
                                           constant: Constants.Spacing.small).isActive = true
        containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                               constant: Constants.Spacing.large).isActive = true
        containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
                                              constant: -Constants.Spacing.small).isActive = true
        containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                                constant: -Constants.Spacing.large).isActive = true

        mainStack.topAnchor.constraint(equalTo: containerView.topAnchor,
                                       constant: Constants.Spacing.small).isActive = true
        mainStack.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,
                                           constant: Constants.Spacing.small).isActive = true
        mainStack.bottomAnchor.constraint(equalTo: containerView.bottomAnchor,
                                          constant: -Constants.Spacing.small).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,
                                            constant: -Constants.Spacing.small).isActive = true
    }

    func setData(viewEntity: MeetingCellViewEntity) {
        titleLabel.text = viewEntity.title
        scheduleTimeLabel.text = viewEntity.scheduleTime
        containerView.layer.borderColor = viewEntity.isToday ? UIColor.blue.cgColor : UIColor.gray.cgColor
    }
}
