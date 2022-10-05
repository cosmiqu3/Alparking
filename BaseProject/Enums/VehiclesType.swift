//
//  VehiclesType.swift
//  BaseProject
//
//  Created by m.valenzuela.donaire on 04-10-22.
//

import Foundation
enum VehiclesType {
    case auto
    case moto
    case miniBus
    case bus
    var tarifa: Int {
        switch self {
        case .auto:
            return 20
        case .moto:
            return 15
        case .miniBus:
            return 25
        case .bus:
            return 30
        }
    }
}
