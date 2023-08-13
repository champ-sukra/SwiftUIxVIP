//
//  ProfilePresenter.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import Foundation

protocol ProfilePresenterInterface {
    func presentSomething(response: ProfileModel.Respoonse)
}

final class ProfilePresenter: ProfilePresenterInterface {
    var view: ProfileView?
    
    func presentSomething(response: ProfileModel.Respoonse) {
        // TODO: transform response model to display model
        view?.displaySomething(display: ProfileModel.ViewModel.Displayed())
    }
}

