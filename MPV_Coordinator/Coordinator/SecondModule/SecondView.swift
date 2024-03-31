// SecondView.swift
//
//  Created by Қадыр Маратұлы on 27.02.2024.
//

import UIKit

protocol SecondViewDelegate: AnyObject {
    func actionDidPressed()
    func clearDidPressed()
}

/// Главный вью все элементы тут рисуется
final class SecondView: UIView {
    // Славая ссылка чтобы не было сильной ссылки (Dependency Inversion)

    // MARK: - Variable Properties

    weak var delegate: SecondViewDelegate?
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()

    lazy var actionButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Push me", for: .normal)
        button.layer.borderWidth = 3
        button.layer.borderColor = .init(red: 0.4, green: 0.6, blue: 0.1, alpha: 1)
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(didPressedActionButton), for: .touchUpInside)
        return button
    }()

    lazy var clearButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.systemPink, for: .highlighted)
        button.addTarget(self, action: #selector(didPressedClearButton), for: .touchUpInside)
        return button
    }()

    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .cyan
        textLabel.text = "Hello"
        addSubview(textLabel)
        addSubview(actionButton)
        addSubview(clearButton)

        setupConstraints()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private Method

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: centerYAnchor),

            actionButton.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 20),
            actionButton.widthAnchor.constraint(equalToConstant: 150),
            actionButton.heightAnchor.constraint(equalToConstant: 50),
            actionButton.centerXAnchor.constraint(equalTo: centerXAnchor),

            clearButton.topAnchor.constraint(equalTo: actionButton.bottomAnchor, constant: 20),
            clearButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            clearButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }

    @objc func didPressedActionButton() {
        delegate?.actionDidPressed()
    }

    @objc func didPressedClearButton() {
        delegate?.clearDidPressed()
    }
}
