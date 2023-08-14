//
//  ProfileModels.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import UIKit

struct ProfileModel {
    // Data struct sent to Interactor
    struct Request {}
    
    // Data struct sent to Presenter
    struct Response {
        var firstName: String
        var lastName: String
        var phoneNo: String
        var linkedin: String
        var summary: String
    }
    
    // Data struct sent to View
    struct ViewModel {
        var fullName: String
        var phoneNo: String
        var linkedin: String
        var summary: String
    }
}
