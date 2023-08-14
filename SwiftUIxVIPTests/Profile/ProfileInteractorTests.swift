//
//  ProfileInteractorTests.swift
//  SwiftUIxVIPTests
//
//  Created by Chaithat Sukra on 14/8/2566 BE.
//

import XCTest
@testable import SwiftUIxVIP

final class ProfileInteractorTests: XCTestCase {

    var sut: ProfileInteractor!
    var presenterSpy: ProfilePresenterSpy!
    
    class ProfilePresenterSpy: ProfilePresenterInterface {
        var presentSomethingCalled = false
        
        func presentSomething(response: ProfileModel.Response) {
            presentSomethingCalled = true
        }
        
    }
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = ProfileInteractor()
        presenterSpy = ProfilePresenterSpy()
    }

    override func tearDownWithError() throws {
        sut = nil
        presenterSpy = nil
        
        try super.tearDownWithError()
    }

    func testStartDoingSomething_WhenSucceed_ShouldCallPresentSomething() throws {
        //Given
        sut.presenter = presenterSpy
        
        //When
        sut.startDoingSomething(request: ProfileModel.Request())
        
        //Then
        XCTAssertTrue(
            presenterSpy.presentSomethingCalled, "[Fail] testStartDoingSomething_WhenSucceed_ShouldCallPresentSomething"
        )
    }

}
