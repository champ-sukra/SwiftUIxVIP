//
//  xxxService.swift
//  
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import TakoBase

class xxxService {

    /*
    *if fail, return error code
    *if success, transform to models (raw)
    */
 
    // MARK: - Calling API Manager
    func requestSomething(aSuccess: @escaping (Any) -> (), aFailure: @escaping (_ error: String?) -> ()) {

        // TODO: Do the work
        let api = APIManager.init(endpoint: "",
                                  method: .get)
        api.call(parameters: [:],
                 headersAdditional: [:],
                 encoding: nil,
                 fail: { (aStatusCode, aJSON) in
                    //TODO : implement fail cases
                    aFailure("error")
        }) { (aJSON) in
            if (aJSON["code"].string == "success") {
                // TODO: Format the response from the Api and pass the result back to the Presenter
                aSuccess("")
            }
        }
    }
}
