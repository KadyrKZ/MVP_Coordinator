// BaseCoordinator.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import Foundation

/// Базовый координатор - откуда где все координаторы страницы наследуется
class BaseCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []

    // MARK: - Public Method

    func start() {
        fatalError("Child should implement funcStart")
    }
}
