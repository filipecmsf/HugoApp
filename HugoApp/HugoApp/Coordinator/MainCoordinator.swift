//
//  MainCoordinator.swift
//  HugoApp
//
//  Created by Filipe Faria on 21/04/21.
//

import UIKit

class MainCoordinator {
    let navigationController: UINavigationController
    let viewControllerFactory: ViewControllerFactoryProtocol

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController

        let serviceFactory = ServiceFactory()
        let usecaseFactory = UsecaseFactory(serviceFactory: serviceFactory)
        let viewModelFactory = ViewModelFactory(usecaseFactory: usecaseFactory)
        viewControllerFactory = ViewControllerFactory(viewModelFactory: viewModelFactory)
    }

    func start() {
        navigationController.pushViewController(viewControllerFactory.createMeetingListViewController(), animated: true)
    }
}
