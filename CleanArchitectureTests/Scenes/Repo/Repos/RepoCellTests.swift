//
//  RepoCellTests.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 6/28/18.
//  Copyright © 2018 Sun Asterisk. All rights reserved.
//

@testable import CleanArchitecture
import XCTest

final class RepoCellTests: XCTestCase {
    var cell: RepoCell!

    override func setUp() {
        super.setUp()
        cell = RepoCell.loadFromNib()
    }

    func test_ibOutlets() {
        XCTAssertNotNil(cell)
        XCTAssertNotNil(cell.nameLabel)
        XCTAssertNotNil(cell.avatarURLStringImageView)
    }
}
