//
//  xxxConfigurator.swift
//  
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class xxxConfigurator {

  // MARK: - Object lifecycle

  static let sharedInstance = xxxConfigurator()

  // MARK: - Configuration

  func configure(viewController: xxxViewController) {
    let router = xxxRouter()
    router.viewController = viewController

    let presenter = xxxPresenter()
    presenter.viewController = viewController

    let interactor = xxxInteractor()
    interactor.presenter = presenter

    viewController.interactor = interactor
    viewController.router = router
  }
}
