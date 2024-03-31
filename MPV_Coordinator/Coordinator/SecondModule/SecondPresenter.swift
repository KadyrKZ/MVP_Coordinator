// SecondPresenter.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import Foundation

protocol SecondPresenterProtocol: AnyObject {
    func didPressedAction()
    func didPressedClear()
}

protocol SecondViewProtocol: AnyObject {
    func showNumbers(_ numbers: [Int])
    func hideNumbers()
}

/// Презентер для главного экрана
final class SecondPresenter: SecondPresenterProtocol {
    // MARK: - Variable Properties

    weak var view: SecondViewProtocol?
    var dataManager: DataManager?

    // MARK: - Public Method

    func didPressedAction() {
        guard let numbers = dataManager?.obtainNumber() else { fatalError("Нету данных") }
        view?.showNumbers(numbers)
    }

    func didPressedClear() {
        view?.hideNumbers()
    }
}
