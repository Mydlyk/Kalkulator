//
//  Test.swift
//  KalkulatorTests
//
//  Created by student on 10/10/2023.
//

import XCTest
@testable import Kalkulator
final class Test: XCTestCase {
    
    func testPositiveScenarioForAddCalculation(){
        let oper = operations()
        let v1 = 10
        let v2 = 20
        let v3 = "+"
        let results = oper.calculate(first: v1, second: v2, operation: v3)
        XCTAssertEqual(results, 30)
    }
    func testNegativeScenarioForAddCalculation(){
        let oper = operations()
        let v1 = 10
        let v2 = 20
        let v3 = "+"
        let results = oper.calculate(first: v1, second: v2, operation: v3)
        XCTAssertEqual(results, 50)
    }
    func testPositiveScenarioForSubCalculation(){
        let oper = operations()
        let v1 = 10
        let v2 = 20
        let v3 = "-"
        let results = oper.calculate(first: v1, second: v2, operation: v3)
        XCTAssertEqual(results, -10)
    }
    func testNegativeScenarioForSubCalculation(){
        let oper = operations()
        let v1 = 10
        let v2 = 20
        let v3 = "-"
        let results = oper.calculate(first: v1, second: v2, operation: v3)
        XCTAssertEqual(results, 30)
    }
    func testPositiveScenarioForProdCalculation(){
        let oper = operations()
        let v1 = 5
        let v2 = 3
        let v3 = "*"
        let results = oper.calculate(first: v1, second: v2, operation: v3)
        XCTAssertEqual(results, 15)
    }
    func testNegativeScenarioForProdCalculation() {
        let oper = operations()
        let v1 = 2
        let v2 = 3
        let v3 = "*"
        let results = oper.calculate(first: v1, second: v2, operation: v3)
        XCTAssertEqual(results, 30)
}
    func testPositiveScenarioForDivCalculation(){
        let oper = operations()
        let v1 = 10
        let v2 = 2
        let v3 = "/"
        let results = oper.calculate(first: v1, second: v2, operation: v3)
        XCTAssertEqual(results, 5)
}
    func testZeroScenarioForDivCalculation(){
        let oper = operations()
        let v1 = 10
        let v2 = 0
        let v3 = "/"
        let results = oper.calculate(first: v1, second: v2, operation: v3)
        XCTAssertEqual(results, 0)
}
    func testPositiveScenarioForSinCalculation(){
        let oper = operations()
        let v1 = 90.0
        let results = oper.sinus(first: v1)
        XCTAssertEqual(results, 0.8939966636005579)
}
   
}
