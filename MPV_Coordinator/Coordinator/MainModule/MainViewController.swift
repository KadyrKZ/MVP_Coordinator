// MainViewController.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import UIKit

/// Контроллер для показа данных
class MainViewController: UIViewController, MainViewDelegate, MainViewProtocol {
    // MARK: - Variable Property

    var mainView = MainView()
    var presenter: MainPresenterProtocol?
    weak var mainViewControllerCoordinator: MainCoordinator?

    // MARK: - LifeCycle

    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        mainView.delegate = self
    }

    // MARK: - Public Methods

    func showNumbers(_ numbers: [Int]) {
        let numbersString = numbers.map { "\($0)" }.joined(separator: ",")
        mainView.textLabel.text = numbersString
    }

    func hideNumbers() {
        mainView.textLabel.text?.removeAll()
    }

    func showSecondPageNumbers() {
        mainViewControllerCoordinator?.runSecond()
    }

    func clearDidPressed() {
        presenter?.didPressedClear()
    }

    func actionDidPressed() {
        presenter?.didPressedAction()
    }

    func runSecondPageDidPressed() {
        presenter?.didPressedSecondPage()
    }
}
