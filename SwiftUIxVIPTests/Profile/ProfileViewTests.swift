//
//  SwiftUIxVIPTests.swift
//  SwiftUIxVIPTests
//
//  Created by Chaithat Sukra on 14/8/2566 BE.
//

import XCTest
@testable import SwiftUIxVIP

final class SwiftUIxVIPTests: XCTestCase {

    var sut: ProfileView!
    var interactorSpy: ProfileInteractorSpy!
    
    class ProfileInteractorSpy: ProfileInteractorInterface {
        var startDoingSomethingCalled = false
                
        func startDoingSomething(request: ProfileModel.Request) {
            startDoingSomethingCalled = true
        }
    }
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = ProfileView(dataStore: ProfileDataStore())
        interactorSpy = ProfileInteractorSpy()
    }

    override func tearDownWithError() throws {
        sut = nil
        interactorSpy = nil
        try super.tearDownWithError()
    }

    func testFetchProfile_WhenSucceed_ShouldCallStartDoingSomething() throws {
        //Given
        sut.interactor = interactorSpy
        
        //When
        sut.fetchProfile()
        
        //Then
        XCTAssertTrue(
            interactorSpy.startDoingSomethingCalled, "[Fail] testFetchProfile_WhenSucceed_ShouldCallStartDoingSomething"
        )
        
    }
}
