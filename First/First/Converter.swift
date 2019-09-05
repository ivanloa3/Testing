//
//  Converter.swift
//  First
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/21/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

struct Converter {
    func convertToCelisus(fahrenheit: Double) -> Double {
        let fahrenheit = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
        let celsius = fahrenheit.converted(to: UnitTemperature.celsius)
        return celsius.value
    }
}
