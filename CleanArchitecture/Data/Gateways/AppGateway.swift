//
//  AppGateway.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 6/25/20.
//  Copyright © 2020 Sun Asterisk. All rights reserved.
//

import UIKit

protocol AppGatewayType {
    func checkFirstRun() -> Bool
    func setFirstRun()
}

struct AppGateway: AppGatewayType {
    func checkFirstRun() -> Bool {
        return !AppSettings.didInit
    }
    
    func setFirstRun() {
        AppSettings.didInit = true
    }
}
