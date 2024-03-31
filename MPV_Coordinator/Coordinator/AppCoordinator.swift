// AppCoordinator.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import UIKit

/// Координатор для настроики окна приложении
class AppCoordinator: BaseCoordinator {
    private var window: UIWindow

    private var navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        return navigationController
    }()

    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }

    override func start() {
        let mainViewControllerCoordinator = MainCoordinator(navigationController: navigationController)
        add(coordinator: mainViewControllerCoordinator)
        mainViewControllerCoordinator.start()
    }
}
