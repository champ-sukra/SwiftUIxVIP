//
//  Test2Configurator.swift
//  DemoVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class Test2Configurator {

  // MARK: - Object lifecycle

  static let sharedInstance = Test2Configurator()

  // MARK: - Configuration

  func configure(viewController: Test2ViewController) {
    let router = Test2Router()
    router.viewController = viewController

    let presenter = Test2Presenter()
    presenter.viewController = viewController

    let interactor = Test2Interactor()
    interactor.presenter = presenter

    viewController.interactor = interactor
    viewController.router = router
  }
}
