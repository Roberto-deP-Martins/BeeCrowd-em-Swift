import Foundation

let n = Double(readLine()!)!
let firstPart = pow((1 + sqrt(5.0)) / 2, n)
let secondPart = pow((1 - sqrt(5.0)) / 2, n)
let result = (firstPart - secondPart) / sqrt(5.0)
print(String(format: "%.1lf", result))