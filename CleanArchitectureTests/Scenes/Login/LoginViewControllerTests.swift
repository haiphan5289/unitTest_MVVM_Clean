//
//  LoginViewControllerTests.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 1/16/19.
//  Copyright © 2019 Sun Asterisk. All rights reserved.
//

@testable import CleanArchitecture
import XCTest
import Reusable

final class LoginViewControllerTests: XCTestCase {
    var viewController: LoginViewController!

    override func setUp() {
        super.setUp()
        viewController = LoginViewController.instantiate()
    }

    func test_ibOutlets() {
        _ = viewController.view
        XCTAssertNotNil(viewController.usernameTextField)
        XCTAssertNotNil(viewController.usernameValidationLabel)
        XCTAssertNotNil(viewController.passwordTextField)
        XCTAssertNotNil(viewController.passwordValidationLabel)
        XCTAssertNotNil(viewController.loginButton)
    }
}
