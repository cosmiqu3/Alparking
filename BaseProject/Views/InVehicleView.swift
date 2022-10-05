//
//  ExampleView.swift
//  BaseProject
//
//  Created by bastian.veliz.vega on 12-07-22.
//

import Foundation
import UIKit
final class InVehicleView: UIView {
    var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // MARK: Button
    lazy var skipOnbiardingButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Aparcar", for: .normal)
//        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)// se ejecutara el metodo showMessage cada vez que se haga click en skipOnbiardingButton
    //        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        }()
    // MARK: Label
    let titleLabel: UILabel =  {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "Ingrese Vehiculo"
        label.textAlignment = .center
        label.font = UIFont(name: "Courier Bold", size: 35)
        label.adjustsFontForContentSizeCategory  = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // MARK: Label
    let patentLabel: UILabel =  {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "Patente: "
        label.textAlignment = .left
        label.font = UIFont(name: "Courier Bold", size: 17)
        label.adjustsFontForContentSizeCategory  = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // MARK: Label
     let vehiclesTypeLabel: UILabel =  {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .left
         label.text = "Tipo de Vehiculos: "
        label.font = UIFont(name: "Courier Bold", size: 17)
        label.adjustsFontForContentSizeCategory  = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // MARK: Label
    let discountCardLabel: UILabel =  {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .left
        label.text = "Tiene tarjeta de descuento?: "
        label.font = UIFont(name: "Courier Bold", size: 17)
        label.adjustsFontForContentSizeCategory  = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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

extension InVehicleView: BaseViewConfiguration {
    func configureView() {

        self.backgroundColor = .yellow
    }

    func buildViewHierarchy() {
        self.addSubview(titleLabel)
        self.addSubview(self.skipOnbiardingButton)
        self.addSubview(self.patentLabel)
        self.addSubview(self.vehiclesTypeLabel)
        self.addSubview(self.discountCardLabel)
        self.addSubview(self.skipOnbiardingButton)
    }
    func setupConstraints() {
        self.titleLabel.setupConstraints { view in
            var array = [NSLayoutConstraint]()
            
            let topConstraint = NSLayoutConstraint.top(firstItem: view, secondItem: self, constant: Constraints.toptitle)
            let leadingConstraint = NSLayoutConstraint.left(firstItem: view, secondItem: self, constant: Constraints.margin)
            let rightConstraint = NSLayoutConstraint.right(firstItem: self, secondItem: view, constant: Constraints.margin)
            let bottomConstraint = NSLayoutConstraint.over(topItem: view, bottomItem: self.patentLabel, constant: Constraints.overTitle)
            let heightConstraint = NSLayoutConstraint.height(view: view, constant: Constraints.title)
            array.append(topConstraint)
            array.append(leadingConstraint)
            array.append(rightConstraint)
            array.append(bottomConstraint)
            array.append(heightConstraint)
            return array
        }
        self.patentLabel.setupConstraints { view in
            var array = [NSLayoutConstraint]()
            let leadingConstraint = NSLayoutConstraint.left(firstItem: view, secondItem: self, constant: Constraints.margin)
            let trailingConstraint = NSLayoutConstraint.right(firstItem: self, secondItem: view, constant: Constraints.margin)
            let heightConstraint = NSLayoutConstraint.height(view: view, constant: Constraints.height)
            let bottomConstraint = NSLayoutConstraint.over(topItem: view, bottomItem: self.vehiclesTypeLabel, constant: Constraints.overMargin)
                array.append(leadingConstraint)
                array.append(heightConstraint)
                array.append(trailingConstraint)
                array.append(bottomConstraint)

                return array
        }
        self.vehiclesTypeLabel.setupConstraints { view in
            var array = [NSLayoutConstraint]()
            let leadingConstraint = NSLayoutConstraint.left(firstItem: view, secondItem: self, constant: Constraints.margin)
            let trailingConstraint = NSLayoutConstraint.right(firstItem: self, secondItem: view, constant: Constraints.margin)
            let heightConstraint = NSLayoutConstraint.height(view: view, constant: Constraints.height)
            let bottomConstraint = NSLayoutConstraint.over(topItem: view, bottomItem: self.discountCardLabel, constant: Constraints.overMargin)
            array.append(trailingConstraint)
            array.append(heightConstraint)
            array.append(leadingConstraint)
            array.append(bottomConstraint)
            return array
        }
        self.discountCardLabel.setupConstraints { view in
            var array = [NSLayoutConstraint]()
            let leadingConstraint = NSLayoutConstraint.left(firstItem: view, secondItem: self, constant: Constraints.margin)
            let trailingConstraint = NSLayoutConstraint.right(firstItem: self, secondItem: view, constant: Constraints.margin)
            let bottomConstraint = NSLayoutConstraint.over(topItem: view, bottomItem: self.skipOnbiardingButton, constant: Constraints.overMargin)
            let heightConstraint = NSLayoutConstraint.height(view: view, constant: Constraints.height)
            array.append(leadingConstraint)
            array.append(trailingConstraint)
            array.append(bottomConstraint)
            array.append(heightConstraint)
            return array
        }
        self.skipOnbiardingButton.setupConstraints { view in
            var array = [NSLayoutConstraint]()
            let leadingConstraint = NSLayoutConstraint.left(firstItem: view, secondItem: self, constant: Constraints.margin)
            let trailingConstraint = NSLayoutConstraint.right(firstItem: self, secondItem: view, constant: Constraints.margin)
            let bottomConstraint = NSLayoutConstraint.bottom(firstItem: self, secondItem: view)
//            let heightConstraint = NSLayoutConstraint.height(view: view, constant: Constraints.height)
            array.append(leadingConstraint)
            array.append(trailingConstraint)
            array.append(bottomConstraint)
//            array.append(heightConstraint)
            return array
        }
    }
}
