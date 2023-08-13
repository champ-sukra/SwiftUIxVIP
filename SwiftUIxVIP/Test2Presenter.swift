//
//  Test2Presenter.swift
//  DemoVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol Test2PresenterInterface {
    func presentSomething(aResponse: Test2Models.Respoonse)
}

class Test2Presenter: Test2PresenterInterface {
    weak var viewController: Test2View!
    
    func presentSomething(aResponse: Test2Models.Respoonse) {
        //Transform Response Model to Displayed Model
        viewController.displaySomething(aDisplay: Test2Models.ViewModel.Displayed())
    }
}

