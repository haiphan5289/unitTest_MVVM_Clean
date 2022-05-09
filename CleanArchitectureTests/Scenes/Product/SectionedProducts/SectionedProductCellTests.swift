//
//  ProductCellTests.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 6/7/18.
//  Copyright © 2018 Sun Asterisk. All rights reserved.
//

import XCTest
@testable import CleanArchitecture

final class SectionedProductCellTests: XCTestCase {
    var cell: SectionedProductCell!

    override func setUp() {
        super.setUp()
        cell = SectionedProductCell.loadFromNib()
    }

    func test_ibOutlets() {
        XCTAssertNotNil(cell)
        XCTAssertNotNil(cell.nameLabel)
        XCTAssertNotNil(cell.priceLabel)
        XCTAssertNotNil(cell.editButton)
    }
}
