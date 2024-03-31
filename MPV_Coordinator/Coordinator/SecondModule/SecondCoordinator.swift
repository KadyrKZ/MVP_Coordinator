// SecondCoordinator.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import UIKit

/// Кординатор для второго экрана
class SecondCoordinator: BaseCoordinator {
    private var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    override func start() {
        let mainViewController = SecondBuilder().configureModule(coordinator: self)
        navigationController.pushViewController(mainViewController, animated: true)
    }
}
