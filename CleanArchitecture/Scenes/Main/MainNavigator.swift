//
//  MainNavigator.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 6/4/18.
//  Copyright © 2018 Sun Asterisk. All rights reserved.
//

import UIKit

protocol MainNavigatorType {
    func toProducts()
    func toSectionedProducts()
    func toSectionedProductCollection()
    func toRepos()
    func toRepoCollection()
    func toRepoCarousel()
    func toUsers()
    func toLogin()
}

struct MainNavigator: MainNavigatorType {
    unowned let assembler: Assembler
    unowned let navigationController: UINavigationController
    
    func toProducts() {
        let vc: ProductsViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func toSectionedProducts() {
        let vc: SectionedProductsViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func toSectionedProductCollection() {
        let vc: SectionedProductCollectionViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func toRepos() {
        let vc: ReposViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func toRepoCollection() {
        let vc: RepoCollectionViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func toRepoCarousel() {
        let vc: RepoCarouselViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func toUsers() {
        let vc: UserListViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func toLogin() {
        let vc: LoginViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: true)
    }
}

