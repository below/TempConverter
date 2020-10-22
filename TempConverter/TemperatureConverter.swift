//
//  TemperatureConverter.swift
//  TempConverter
//
//  Created by Alexander v. Below on 22.10.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import Foundation

func fahrenheit(celcius: Double) -> Double {
    return (celcius * 9/5) + 32
}

func localizedConversion(_ input: String,
                         formatter: NumberFormatter = NumberFormatter(),
                         map:((Double) -> Double) = { $0 }) -> String {
    guard let inputDouble = formatter.number(from: input)?.doubleValue else {
        return ""
    }
    let outputDouble = map(inputDouble)
    guard let output = formatter.string(from: NSNumber.init(value: outputDouble)) else {
        return ""
    }
    return output
}
