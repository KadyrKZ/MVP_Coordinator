// SecondBuilder.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import UIKit

protocol SecondBuilderProtocol {
    func configureModule(coordinator: SecondCoordinator) -> UIViewController
}
/// Билдер для главного экрана
final class SecondBuilder: SecondBuilderProtocol {
    func configureModule(coordinator: SecondCoordinator) -> UIViewController {
        let mainViewController = SecondViewController()
        let mainViewPresenter = SecondPresenter()
        let dataManager = DataManager()

        mainViewController.mainViewControllerCoordinator = coordinator
        mainViewController.presenter = mainViewPresenter
        mainViewPresenter.view = mainViewController
        mainViewPresenter.dataManager = dataManager
        return mainViewController
    }
}
