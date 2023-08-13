//
//  xxxWorker.swift
//  
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol xxxWorkerInterface {
  func getSomething(aQueryString: String, aCompletion: @escaping (Any) -> Void)
}

final class xxxWorker {

    var service: xxxService!
    
    init(with aService: xxxService) {
        service = aService
    }

  // MARK: - Business Logic

    func getSomething(aQueryString: String, aCompletion: @escaping (Any) -> Void) {
        service.requestSomething(aSuccess: { (aAny) in
            aCompletion(aAny)
        }) { (aErrorCode) in
            if let code = aErrorCode {
                print(code)
            }
        }
    }
}
