// MainPresenter.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import Foundation

protocol MainPresenterProtocol: AnyObject {
    func didPressedAction()
    func didPressedClear()
    func didPressedSecondPage()
}

protocol MainViewProtocol: AnyObject {
    func showNumbers(_ numbers: [Int])
    func hideNumbers()
    func showSecondPageNumbers()
}

/// Презентер для главного экрана
final class MainPresenter: MainPresenterProtocol {
    // MARK: - Variable Properties

    weak var view: MainViewProtocol?
    var dataManager: DataManager?

    // MARK: - Public Method

    func didPressedAction() {
        guard let numbers = dataManager?.obtainNumber() else { fatalError("Нету данных") }
        view?.showNumbers(numbers)
    }

    func didPressedClear() {
        view?.hideNumbers()
    }

    func didPressedSecondPage() {
        view?.showSecondPageNumbers()
    }
}
