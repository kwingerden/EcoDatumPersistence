//
//  PersistenceManagerTests.swift
//  EcoDatumPersistenceTests
//
//  Created by Kenneth Wingerden on 3/2/19.
//  Copyright © 2019 Kenneth Wingerden. All rights reserved.
//

import XCTest
import EcoDatumCommon
import EcoDatumModel
import EcoDatumCoreData
@testable import EcoDatumPersistence

class PersistenceManagerTests: XCTestCase {

    override func setUp() {

    }

    override func tearDown() {

    }

    func test1() throws {
        let notebook = try PersistenceManager.shared.newNotebook()
        print(try toJSON(notebook))
    }

}
