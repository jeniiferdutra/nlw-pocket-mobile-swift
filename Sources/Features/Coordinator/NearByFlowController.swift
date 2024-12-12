//
//  NearByFlowController.swift
//  Nearby
//
//  Created by Jenifer Rocha on 11/12/24.
//

import Foundation
import UIKit

class NearByFlowController {
    private var navigationController: UINavigationController?
    
    public init() {
        
    }
    
    func start() -> UINavigationController? {
        
        let contentView = SplashView()
        let startViewController = SplashViewController(contentView: contentView)
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController
    }
}
