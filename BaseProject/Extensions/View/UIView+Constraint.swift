//
//  UIView+Constraint.swift
//  BaseProject
//
//  Created by bastian.veliz.vega on 12-07-22.
//

import Foundation
import UIKit

// MARK: - UIView extension to falicitate the build of a constraints list

public extension UIView {
    /// Method to setup a list of constraints to self UIView
    ///
    /// - Parameter activate: Block that provide the constraints list to be activated, that uses self as parameter
    func setupConstraints(_ activate: (UIView) -> [NSLayoutConstraint]) {
        NSLayoutConstraint.activate(activate(self)) // swiftlint:disable:this forbid_constraint_activation
    }
}
