//
//  Test2Interactor.swift
//  DemoVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol Test2InteractorInterface {
    func startDoingSomething(aRequest: Test2Models.Request)
    var model: Any? { get }
}

final class Test2Interactor: Test2InteractorInterface {
    var presenter: Test2PresenterInterface!
    var model: Any?
    
    var worker: Test2Worker = Test2Worker(with: Test2Service())
    
    // MARK: - Business logic
    
    func startDoingSomething(aRequest: Test2Models.Request) {
        worker.getSomething(aQueryString: "") { (aAny) in
            self.model = aAny
            
            //Convert Any object to Response Model
            self.presenter.presentSomething(aResponse: Test2Models.Respoonse())
        }
    }
}

