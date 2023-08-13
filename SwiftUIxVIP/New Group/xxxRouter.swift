//
//  xxxRouter.swift
//  
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol xxxRouterInterface {
  func navigateToViewController()
}

final class xxxRouter: xxxRouterInterface {
  weak var viewController: xxxView!

  // MARK: - Navigation

    func navigateToViewController() {
        // TODO: Navigate to viewController
    }
}
