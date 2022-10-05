//
//  AppDelegate.swift
//  BaseProject
//
//  Created by bastian.veliz.vega on 12-07-22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let rootViewController = InVehicleController(nibName: nil, bundle: nil)
        let rootNavigationController = UINavigationController(rootViewController: rootViewController)
        self.window?.rootViewController = rootNavigationController
        self.window?.makeKeyAndVisible()
        return true
    }
}
