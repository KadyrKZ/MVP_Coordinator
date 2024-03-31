// Coordinator.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import UIKit

/// Координатор всего проекта как шаблон
protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }

    func start()
}

extension Coordinator {
    // MARK: - Public Method

    // Координаторы добавлется и удаляется
    func add(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }

    func remove(coordinator: Coordinator) {
        childCoordinators = childCoordinators.filter { $0 !== coordinator }
    }
}
