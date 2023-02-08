import Foundation

let measurementsAmount = Int(readLine()!)!
let measurementsArray = readLine()!.split(separator: " ").map { Int($0)! }
var output = 0
for idx in 1..<measurementsArray.count {
    if measurementsArray[idx - 1] > measurementsArray[idx] {
        output = idx + 1
        break
    }
}
print(output)