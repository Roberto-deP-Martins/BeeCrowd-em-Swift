import Foundation

let menu: [String : Float] = ["1001": 1.5, "1002" : 2.5, "1003" : 3.5, "1004" : 4.5, "1005" : 5.5]
let itensAmmount = Int(readLine()!)!
var total: Float = 0
for _ in 0..<itensAmmount {
    let productData = readLine()!.split(separator: " ")
    let productCode = String(productData[0])
    let productAmmount = Float(productData[1])!
    total += menu[productCode]! * productAmmount
}
print(String(format: "%.2f", total))
