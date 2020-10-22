//
//  TempConverterUITests.swift
//  TempConverterUITests
//
//  Created by Alexander v. Below on 22.10.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import XCTest

class TempConverterUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConversion() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        let inputField = app.textFields["Input"]
        inputField.tap()
        inputField.typeText("100")

        let outputField = app.staticTexts["Output"]
        let value = outputField.label

        XCTAssertEqual(value, "212")
    }
}
