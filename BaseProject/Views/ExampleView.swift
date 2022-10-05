//
//  ExampleView.swift
//  BaseProject
//
//  Created by bastian.veliz.vega on 12-07-22.
//

import Foundation
import UIKit

class ExampleView: UIView {
    let label: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16.0)
        label.textColor = .white
        return label
    }()

    let button: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("My Button", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()

    init() {
        super.init(frame: .zero)
        self.setupViewConfiguration()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ExampleView: BaseViewConfiguration {
    func buildViewHierarchy() {
        self.addSubview(self.label)
        self.addSubview(self.button)
    }

    func setupConstraints() {
        self.label.setupConstraints { view in
            [.verticalCenter(firstView: view, secondView: self),
             .left(firstItem: view, secondItem: self, constant: 20.0),
             .right(firstItem: self, secondItem: view, constant: 20.0)]
        }

        self.button.setupConstraints {
            [
                .over(topItem: self.label, bottomItem: $0, constant: 20.0),
                .left(firstItem: $0, secondItem: self, constant: 20.0),
                .right(firstItem: self, secondItem: $0, constant: 20.0),
                .height(view: $0, constant: 40.0),
            ]
        }
    }

    func configureView() {
        self.label.text = "My text"
        self.backgroundColor = .blue
    }
}
