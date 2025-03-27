import XCTest
@testable import MichiganCities

final class MichiganCitiesTests: XCTestCase {
    func testRandomCities() throws {
        // Test getting random cities
        let randomCities = MichiganCities.random(count: 3)
        XCTAssertNotNil(randomCities)
        XCTAssertEqual(randomCities?.count, 3)
        
        // Test empty result
        XCTAssertNil(MichiganCities.random(count: 0))
        
        // Test getting all cities
        let allCities = MichiganCities.random(count: 1000)
        XCTAssertEqual(allCities?.count, MichiganCities.allCases.count)
    }
    
    func testCityProperties() {
        let city = MichiganCities.adrian
        XCTAssertEqual(city.name, "Adrian")
        XCTAssertEqual(city.id, 1)
        
        let michiganCity = city.asMichiganCity
        XCTAssertEqual(michiganCity.name, city.name)
        XCTAssertEqual(michiganCity.id, city.id)
        XCTAssertEqual(michiganCity.coordinate.latitude, city.coordinate.latitude)
        XCTAssertEqual(michiganCity.coordinate.longitude, city.coordinate.longitude)
    }
}
