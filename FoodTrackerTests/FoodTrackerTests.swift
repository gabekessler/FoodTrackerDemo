//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Gabe Kessler on 4/30/16.
//  Copyright © 2016 Gabe Kessler. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoorTracker Tests
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        
        // Success case.
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really Bad rating", photo: nil, rating: -5)
        XCTAssertNil(badRating, "Negative ratings are invalid.")
    }
    
}
