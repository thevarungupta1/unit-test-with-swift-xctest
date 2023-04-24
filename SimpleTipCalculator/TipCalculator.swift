

import Foundation

class TipCalculator {
    
    func calculateTip(billAmount: Float?, taxPercentage: Float?, tipPercentage: Float?) -> Float? {
        if billAmount < 0 {
            var ex = NSException(name: "NegativeBillException", reason: "BillAmount cannot be negative.", userInfo: nil)
            ex.raise()
        }
        
        var bill = billAmount!
        var pTax = taxPercentage!
        var pTip = tipPercentage!
        
        var tax = bill * pTax
        
        var total = bill + tax
        
        var tip = total * pTip
        
        return tip
    }
    
}