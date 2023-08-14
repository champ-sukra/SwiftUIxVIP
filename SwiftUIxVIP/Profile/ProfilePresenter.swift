//
//  ProfilePresenter.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import Foundation

protocol ProfilePresenterInterface {
    func presentSomething(response: ProfileModel.Response)
}

final class ProfilePresenter: ProfilePresenterInterface {
    var view: ProfileView?
    
    func presentSomething(response: ProfileModel.Response) {
        let fullName = response.firstName + " " + response.lastName
        view?.displaySomething(display: ProfileModel.ViewModel(fullName: fullName,
                                                               phoneNo: response.phoneNo,
                                                               linkedin: response.linkedin,
                                                               summary: response.summary
                                                              ))
    }
}

