
import XCTest

class TipServiceTests: XCTestCase {

    func testWhenTipIsZeroServiceShouldReturnNil() {
        
        class stubTipCalculator: TipCalculator {
            override func calculateTip(billAmount: Float?, taxPercentage: Float?, tipPercentage: Float?) -> Float? {
                return 0 as Float
            }
        }
        
        let tipService = TipService(calc: stubTipCalculator())
        let tip = tipService.getTipValue(10, taxPercentage: 100, tipPercentage: 1000)
        
        XCTAssertNil(tip, "Returned value should be nil")
    }
}
