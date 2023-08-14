//
//  ProfileConfigurator.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//
//

import SwiftUI

extension ProfileView {
    func configure() -> some View {
        var view = self
        let router = ProfileRouter()
        router.view = view

        let presenter = ProfilePresenter()
        presenter.view = view

        let interactor = ProfileInteractor()
        interactor.presenter = presenter

        view.interactor = interactor
        view.router = router
        return view
    }
}
