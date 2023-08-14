//
//  ProfileViewController.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import SwiftUI

protocol ProfileDisplayLogic {
    func displaySomething(display: ProfileModel.ViewModel)
}

extension ProfileView: ProfileDisplayLogic {
    func displaySomething(display: ProfileModel.ViewModel) {
        dataStore.fullName = display.fullName
        dataStore.phoneNo = display.phoneNo
        dataStore.linkedIn = display.linkedin
        dataStore.summary = display.summary
    }
}

struct ProfileView: View {
    var interactor: ProfileInteractorInterface?
    var router: ProfileRouterInterface?
    
    @State var isShowPhoneNo: Bool = true
    @ObservedObject var dataStore: ProfileDataStore
    
    func fetchProfile() {
        let request = ProfileModel.Request()
        interactor?.startDoingSomething(request: request)
    }
    
    var body: some View {
        List {
            Toggle(isOn: $isShowPhoneNo) {
                Text("Show Phone No").bold()}
            VStack(alignment: .leading, spacing: 4) {
                Text(dataStore.fullName)
                    .font(.title)
                if isShowPhoneNo {
                    Text(dataStore.phoneNo)
                        .font(.headline)
                }
                Text(dataStore.linkedIn)
                    .font(.subheadline)
            }
            Text(dataStore.summary)
                .font(.body)
            .onAppear() {
                fetchProfile()
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(dataStore: ProfileDataStore()).configure()
    }
}
