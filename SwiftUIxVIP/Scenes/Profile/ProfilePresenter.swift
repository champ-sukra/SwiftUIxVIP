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
    var view: ProfileDisplayLogic?
    
    func presentSomething(response: ProfileModel.Response) {
        let fullName = response.firstName + " " + response.lastName
        let phoneNo = maskPhoneNo(response.phoneNo)
        view?.displaySomething(display: ProfileModel.ViewModel(fullName: fullName,
                                                               phoneNo: phoneNo,
                                                               linkedin: response.linkedin,
                                                               summary: response.summary))
    }
    
    private func maskPhoneNo(_ phoneNo: String) -> String {
        let maskNo = 3
        guard phoneNo.count > maskNo else { return phoneNo }
        
        //0432279245
        let pre = phoneNo.prefix(phoneNo.count - maskNo)
        let masked = String(repeating: "x", count: maskNo)
        return pre + masked
    }
}

