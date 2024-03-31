// SceneDelegate.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import UIKit

/// Окно приложения . На самом деле все настраевает AppCoordinator
final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    // MARK: - Variable Properties

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    // MARK: - Public Method

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        makeWindow(scene: scene)
    }

    // MARK: - Private Method

    private func makeWindow(scene: UIScene) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        if let window {
            appCoordinator = AppCoordinator(window: window)
            appCoordinator?.start()
        }
    }
}
