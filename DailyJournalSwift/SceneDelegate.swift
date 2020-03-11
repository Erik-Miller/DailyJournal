//
//  SceneDelegate.swift
//  DailyJournalSwift
//
//  Created by Erik Miller on 3/9/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
}

extension SceneDelegate {
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = scene as? UIWindowScene else {
            return
        }
        
        switch windowScene.screen.traitCollection.userInterfaceIdiom {
        case .phone:
            let viewController = ViewController()
            let navigationController = UINavigationController(rootViewController: viewController)
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
            self.window = window
        default:
            break
        }
    }
}
