//
//  ProfileViewController.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import SwiftUI

protocol ProfileDisplayLogic {
    func displaySomething(display: ProfileModel.ViewModel.Displayed)
}

extension ProfileView: ProfileDisplayLogic {
    func displaySomething(display: ProfileModel.ViewModel.Displayed) {}
}

struct ProfileView: View {
    var interactor: ProfileInteractorInterface?
    var router: ProfileRouterInterface?
    
    var body: some View {
        VStack {
            Text("Profile")
        }.task {
            interactor?.startDoingSomething(request: ProfileModel.Request())
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
            ProfileView()
    }
}
