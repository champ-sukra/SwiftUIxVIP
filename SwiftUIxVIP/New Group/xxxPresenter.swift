//
//  xxxPresenter.swift
//  
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol xxxPresenterInterface {
    func presentSomething(aResponse: xxxModels.Respoonse)
}

class xxxPresenter: xxxPresenterInterface {
    weak var viewController: xxxView!
    
    func presentSomething(aResponse: xxxModels.Respoonse) {
        //Transform Response Model to Displayed Model
        viewController.displaySomething(aDisplay: xxxModels.ViewModel.Displayed())
    }
}

