//
//  MainNavigatorMock.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 6/4/18.
//  Copyright © 2018 Sun Asterisk. All rights reserved.
//

@testable import CleanArchitecture

final class MainNavigatorMock: MainNavigatorType {
    
    // MARK: - toProducts
    
    var toProductsCalled = false
    
    func toProducts() {
        toProductsCalled = true
    }
    
    // MARK: - toSectionedProducts
    
    var toSectionedProductsCalled = false
    
    func toSectionedProducts() {
        toSectionedProductsCalled = true
    }
    
    // MARK: - toRepos
    
    var toReposCalled = false
    
    func toRepos() {
        toReposCalled = true
    }
    
    // MARK: - toRepoCollection
    
    var toRepoCollectionCalled = false
    
    func toRepoCollection() {
        toRepoCollectionCalled = true
    }
    
    // MARK: - toRepoCarousel

    var toRepoCarouselCalled = false

    func toRepoCarousel() {
        toRepoCarouselCalled = true
    }
    
    // MARK: - toUsers
    
    var toUsersCalled = false
    
    func toUsers() {
        toUsersCalled = true
    }
    
    // MARK: - toLogin
    
    var toLoginCalled = false
    
    func toLogin() {
        toLoginCalled = true
    }
    
    // MARK: - toSectionedProductCollection
    
    var toSectionedProductCollectionCalled = false
    
    func toSectionedProductCollection() {
        toSectionedProductCollectionCalled = true
    }

}
