import Foundation

let a = Double(readLine()!)!
let b = Double(readLine()!)!
let c = Double(readLine()!)!

let media = (a * 2 + b * 3 + c * 5) / (2 + 3 + 5)
print(String(format: "MEDIA = %.1lf", media))