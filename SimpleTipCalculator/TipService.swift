
import Foundation

class TipService: NSObject {
    
    let tipCalc: TipCalculator
    
    override init() {
        tipCalc = TipCalculator()
    }
    
    init(calc: TipCalculator) {
        tipCalc = calc
    }
    
    func getTipValue(billAmount: Float?, taxPercentage: Float?, tipPercentage: Float?) -> Float? {
        let tip = tipCalc.calculateTip(billAmount, taxPercentage: taxPercentage, tipPercentage: tipPercentage)
        
        return tip == 0 ? nil : tip
    }
}