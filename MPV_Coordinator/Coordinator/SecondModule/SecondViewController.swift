// SecondViewController.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import UIKit

// Контроллер для показа данных
class SecondViewController: UIViewController, SecondViewDelegate, SecondViewProtocol {
    // MARK: - Variable Property

    weak var mainViewControllerCoordinator: SecondCoordinator?
    var mainView = SecondView()
    var presenter: SecondPresenterProtocol?

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

    func clearDidPressed() {
        presenter?.didPressedClear()
    }

    func actionDidPressed() {
        presenter?.didPressedAction()
    }
}
