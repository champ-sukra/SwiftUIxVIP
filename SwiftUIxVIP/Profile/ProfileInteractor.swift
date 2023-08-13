//
//  ProfileInteractor.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import Foundation

protocol ProfileInteractorInterface {
    func startDoingSomething(request: ProfileModel.Request)
    var model: Any? { get }
}

final class ProfileInteractor: ProfileInteractorInterface {
    var presenter: ProfilePresenterInterface?
    var model: Any?
    
    var worker: ProfileWorker = ProfileWorker()
        
    func startDoingSomething(request: ProfileModel.Request) {
        worker.getSomething(body: nil) { res in
            // TODO: - add business logic here for success
            self.model = res
            self.presenter?.presentSomething(response: ProfileModel.Respoonse())
        } fail: { errCode in
            // TODO: - add business logic here for fail
        }
    }
}

