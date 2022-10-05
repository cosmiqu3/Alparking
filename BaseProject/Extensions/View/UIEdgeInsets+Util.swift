//
//  UIEdgeInsets+Util.swift
//  BaseProject
//
//  Created by bastian.veliz.vega on 12-07-22.
//

import Foundation
import UIKit

public extension UIEdgeInsets {
    init(value: CGFloat, directions: UIRectEdge = .all) {
        if directions == .all {
            self.init(top: value, left: value, bottom: value, right: value)
        } else {
            let top = directions.contains(.top) ? value : 0
            let left = directions.contains(.left) ? value : 0
            let bottom = directions.contains(.bottom) ? value : 0
            let right = directions.contains(.right) ? value : 0
            self.init(top: top, left: left, bottom: bottom, right: right)
        }
    }
}
