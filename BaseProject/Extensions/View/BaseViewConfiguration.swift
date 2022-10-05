//
//  BaseViewConfiguration.swift
//  BaseProject
//
//  Created by bastian.veliz.vega on 12-07-22.
//

import Foundation

public protocol BaseViewConfiguration {
    func buildViewHierarchy()
    func setupConstraints()
    func configureView()
}

public extension BaseViewConfiguration {
    func setupViewConfiguration() {
        self.buildViewHierarchy()
        self.setupConstraints()
        self.configureView()
    }
}
