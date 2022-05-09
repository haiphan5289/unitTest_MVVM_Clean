//
//  LoginNavigatorMock.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 1/16/19.
//  Copyright © 2019 Sun Asterisk. All rights reserved.
//

@testable import CleanArchitecture

final class LoginNavigatorMock: LoginNavigatorType {
    // MARK: - toMain
    
    var toMainCalled = false
    
    func toMain() {
        toMainCalled = true
    }
}
