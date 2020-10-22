//
//  TempConverterTests.swift
//  TempConverterTests
//
//  Created by Alexander v. Below on 22.10.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import XCTest
@testable import TempConverter

class TempConverterTests: XCTestCase {

    var formatter: NumberFormatter!

    override func setUpWithError() throws {
        formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "US")
        formatter.maximumFractionDigits = 1
        formatter.minimumFractionDigits = 1
    }

    override func tearDownWithError() throws {
    }

    func testCelciusToFahrenheit() throws {
        let input = 0.0
        let output = fahrenheit(celcius: input)
        XCTAssertEqual(output, 32.0)
    }

    func testBasicConversion() {
        let output = localizedConversion("1")
        XCTAssertEqual(output, "1")
    }

    func testLocalizedConversion() {
        let output = localizedConversion("1", formatter: self.formatter)
        XCTAssertEqual(output, "1.0")
    }

    func testGermanLocalizedConversion() {
        formatter.locale = Locale(identifier: "DE")
        let output = localizedConversion("2,56", formatter: formatter)
        XCTAssertEqual(output, "2,6")
    }
}
