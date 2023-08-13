//
//  xxxInteractor.swift
//  
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol xxxInteractorInterface {
    func startDoingSomething(aRequest: xxxModels.Request)
    var model: Any? { get }
}

final class xxxInteractor: xxxInteractorInterface {
    var presenter: xxxPresenterInterface!
    var model: Any?
    
    var worker: xxxWorker = xxxWorker(with: xxxService())
    
    // MARK: - Business logic
    
    func startDoingSomething(aRequest: xxxModels.Request) {
        worker.getSomething(aQueryString: "") { (aAny) in
            self.model = aAny
            
            //Convert Any object to Response Model
            self.presenter.presentSomething(aResponse: xxxModels.Respoonse())
        }
    }
}

