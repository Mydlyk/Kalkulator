//
//  Test.swift
//  KalkulatorTests
//
//  Created by student on 10/10/2023.
//

import XCTest
@testable import Kalkulator
final class Test: XCTestCase {
    func test1(){
        let oper = operations()
        let v1 = 10
        let v2 = 20
        let v3 = "+"
        let results = oper.calculate(first: v1, second: v2, operation: v3)
        XCTAssertEqual(results, 30)
        
    }
   
}
