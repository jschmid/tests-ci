//
//  TestsCITests.swift
//  TestsCITests
//
//  Created by Jonas Schmid on 18/12/15.
//  Copyright © 2015 schmid. All rights reserved.
//

import XCTest
@testable import TestsCI

class TestsCITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAdd() {
        let calculator = Calculator()
        let result = calculator.add(1, 2)
        XCTAssertEqual(result, 3)
    }

    func testUser() {
        let json = "{\"id\": 4, \"name\": \"John\"}"
        let manager = UserManager()
        let user = manager.getUser(json)

        XCTAssertNotNil(user)
        XCTAssertEqual(user?.name, "John")
    }
    
}
