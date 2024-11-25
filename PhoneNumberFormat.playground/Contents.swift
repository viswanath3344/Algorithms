import UIKit


var phoneNumber = "123     494 202 2032 200"

func formatNumber(num: String) -> String{
    var inputString = num.replacingOccurrences(of: " ", with: "")
    inputString = inputString.replacingOccurrences(of: "_", with: "")
    var result = ""
     
    
    for (index, char) in inputString.enumerated() {
        result  = result.appending(String(char))
        
        if index%3 == 0 {
            result.append("-")
        }
    }
    
    return result
}



formatNumber(num: phoneNumber)
