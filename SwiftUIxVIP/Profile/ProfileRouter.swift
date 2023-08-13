//
//  ProfileRouter.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import UIKit

protocol ProfileRouterInterface {
  func navigateToViewController()
}

final class ProfileRouter: ProfileRouterInterface {
  var view: ProfileView?

    func navigateToViewController() {
        // TODO: navigate to viewController
    }
}
