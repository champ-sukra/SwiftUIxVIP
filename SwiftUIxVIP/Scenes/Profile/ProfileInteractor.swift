//
//  ProfileInteractor.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import Foundation

protocol ProfileInteractorInterface {
    func startDoingSomething(request: ProfileModel.Request)
}

final class ProfileInteractor: ProfileInteractorInterface {
    var presenter: ProfilePresenterInterface?
    
    var worker: ProfileWorker = ProfileWorker()
        
    func startDoingSomething(request: ProfileModel.Request) {
        worker.getSomething(body: nil) { [weak self] result in
            guard let self = self else {
                return
            }
            
            switch result {
            case .success(let data):
                if let res = data as? [String: String] {
                    let profile = ProfileModel.Response(firstName: res["first_name"] ?? "",
                                                        lastName: res["last_name"] ?? "",
                                                        phoneNo: res["phone_no"] ?? "",
                                                        linkedin: res["linkedin"] ?? "",
                                                        summary: res["summary"] ?? "")
                    self.presenter?.presentSomething(response: profile)
                }
            case .failure(let errCode):
                print(errCode)
            }
        }
    }
}

