//
//  InVehicleController.swift
//  BaseProject
//
//  Created by m.valenzuela.donaire on 04-10-22.
//

import Foundation
import UIKit

final class InVehicleController: UIViewController {
    let inVehicleView: InVehicleView = {
        let view = InVehicleView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func loadView() {
        self.view = self.inVehicleView
    }
}
