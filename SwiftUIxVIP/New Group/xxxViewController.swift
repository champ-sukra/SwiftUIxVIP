//
//  xxxViewController.swift
//  
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import TakoBase

protocol xxxView: BaseView {
    func displaySomething(aDisplay: xxxModels.ViewModel.Displayed)
}

class xxxViewController: BaseViewController {

    var interactor: xxxInteractorInterface!
    var router: xxxRouterInterface!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        xxxConfigurator.sharedInstance.configure(viewController: self)
    }

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        interactor.startDoingSomething(aRequest: xxxModels.Request())
    }
}

// MARK: - xxxViewController
extension xxxViewController: xxxView {
    func displaySomething(aDisplay: xxxModels.ViewModel.Displayed) {
        // TODO: Update UI
    }
}

