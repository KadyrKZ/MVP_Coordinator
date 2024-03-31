// MainCoordinator.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import UIKit

/// Координатор для главного экрана
class MainCoordinator: BaseCoordinator {
    // MARK: - Pivate Properties

    private var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    override func start() {
        let mainViewController = MainBuilder().configureModule(coordinator: self)

        navigationController.pushViewController(mainViewController, animated: true)
    }

    // MARK: - Public Method

    func runSecond() {
        let secondViewControllerCoordinator =
            SecondCoordinator(navigationController: navigationController)
        add(coordinator: secondViewControllerCoordinator)
        secondViewControllerCoordinator.start()
    }
}
