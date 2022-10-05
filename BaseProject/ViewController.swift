//
//  ViewController.swift
//  BaseProject
//
//  Created by bastian.veliz.vega on 12-07-22.
//

import UIKit

class ViewController: UIViewController {
    private let exampleView = ExampleView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func loadView() {
        self.view = self.exampleView
    }
}
