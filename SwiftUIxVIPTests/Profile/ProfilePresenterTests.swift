//
//  ProfilePresenterTests.swift
//  SwiftUIxVIPTests
//
//  Created by Chaithat Sukra on 14/8/2566 BE.
//

import XCTest
@testable import SwiftUIxVIP

final class ProfilePresenterTests: XCTestCase {

    var sut: ProfilePresenter!
    var viewSpy: ProfileViewSpy!
    
    class ProfileViewSpy: ProfileDisplayLogic {
        var displaySomethingCalled = false
        var capturedDisplay: ProfileModel.ViewModel!
        
        func displaySomething(display: ProfileModel.ViewModel) {
            displaySomethingCalled = true
            capturedDisplay = display
        }
    }
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = ProfilePresenter()
        viewSpy = ProfileViewSpy()
    }

    override func tearDownWithError() throws {
        sut = nil
        viewSpy = nil
        
        try super.tearDownWithError()
    }

    func testPresentSomething_WhenSucceed_ShouldCallDisplaySomething() throws {
        //Given
        sut.view = viewSpy
        
        //When
        sut.presentSomething(response: ProfileModel.Response(firstName: "",
                                                             lastName: "",
                                                             phoneNo: "",
                                                             linkedin: "",
                                                             summary: ""))
        
        //Then
        XCTAssertTrue(
            viewSpy.displaySomethingCalled, "[Fail] testPresentSomething_WhenSucceed_ShouldCallDisplaySomething"
        )
    }
    
    func testPresentSomething_WhenSucceed_ShouldDisplayFullname() throws {
        //Given
        sut.view = viewSpy
        
        //When
        sut.presentSomething(response: ProfileModel.Response(firstName: "fn",
                                                             lastName: "ln",
                                                             phoneNo: "090000000",
                                                             linkedin: "",
                                                             summary: ""))
        
        //Then
        XCTAssertEqual(viewSpy.capturedDisplay.fullName, "fn ln")
    }
    
    func testPresentSomething_WhenSucceed_ShouldDisplayMaskedPhoneNo() throws {
        //Given
        sut.view = viewSpy
        
        //When
        sut.presentSomething(response: ProfileModel.Response(firstName: "fn",
                                                             lastName: "ln",
                                                             phoneNo: "0432279244",
                                                             linkedin: "",
                                                             summary: ""))
        
        //Then
        XCTAssertEqual(viewSpy.capturedDisplay.phoneNo, "0432279xxx", "[Fail] testPresentSomething_WhenSucceed_ShouldDisplayMaskedPhoneNo")
    }
}
