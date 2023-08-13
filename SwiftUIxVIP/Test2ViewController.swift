//
//  Test2ViewController.swift
//  DemoVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import TakoBase

protocol Test2View: BaseView {
    func displaySomething(aDisplay: Test2Models.ViewModel.Displayed)
}

class Test2ViewController: BaseViewController {

    var interactor: Test2InteractorInterface!
    var router: Test2RouterInterface!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        Test2Configurator.sharedInstance.configure(viewController: self)
    }

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        interactor.startDoingSomething(aRequest: Test2Models.Request())
    }
}

// MARK: - Test2ViewController
extension Test2ViewController: Test2View {
    func displaySomething(aDisplay: Test2Models.ViewModel.Displayed) {
        // TODO: Update UI
    }
}

