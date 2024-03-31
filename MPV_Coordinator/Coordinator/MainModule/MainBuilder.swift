// MainBuilder.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import Foundation

import UIKit

protocol MainBuilderProtocol {
    func configureModule(coordinator: MainCoordinator) -> UIViewController
}
/// Билдер для главного экрана
final class MainBuilder: MainBuilderProtocol {
    func configureModule(coordinator: MainCoordinator) -> UIViewController {
        let mainViewController = MainViewController()
        let mainViewPresenter = MainPresenter()
        let dataManager = DataManager()

        mainViewController.mainViewControllerCoordinator = coordinator
        mainViewController.presenter = mainViewPresenter
        mainViewPresenter.view = mainViewController
        mainViewPresenter.dataManager = dataManager
        return mainViewController
    }
}
