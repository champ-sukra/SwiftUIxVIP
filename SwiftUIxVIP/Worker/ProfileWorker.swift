//
//  ProfileWorker.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import Foundation

protocol ProfileWorkerInterface {
    func getSomething(body: Any?,
                      success: @escaping (Any) -> (),
                      fail: @escaping (_ errCode: String?) -> ())
}

final class ProfileWorker: ProfileWorkerInterface {
    func getSomething(body: Any?,
                      success: @escaping (Any) -> (),
                      fail: @escaping (_ errCode: String?) -> ()) {
        //TODO: format response from the Api and pass the result back to the interactor
    }
}
