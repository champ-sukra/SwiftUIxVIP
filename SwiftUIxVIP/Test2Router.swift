//
//  Test2Router.swift
//  DemoVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol Test2RouterInterface {
  func navigateToViewController()
}

final class Test2Router: Test2RouterInterface {
  weak var viewController: Test2View!

  // MARK: - Navigation

    func navigateToViewController() {
        // TODO: Navigate to viewController
    }
}
