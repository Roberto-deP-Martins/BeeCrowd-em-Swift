import Foundation

let readingsAmmount = Int(readLine()!)!
let readings = readLine()!.split(separator: " ").map { Int($0)!}
var hasSamePattern = true
var lastWasPeak = true
for i in 1..<readings.count {
    if i == 1 {
        if readings[i] == readings[i - 1] {
            hasSamePattern = false
            break
        }
    }
    else {
        if lastWasPeak {
            if readings[i] >= readings[i - 1] {
                hasSamePattern = false
                break
            }
        }
        else {
            if readings[i] <= readings[i - 1] {
                hasSamePattern = false
                break
            }
        }
    }

    if readings[i] < readings[i - 1] {
        lastWasPeak = false
    }
    else {
        lastWasPeak = true        
    }
}

hasSamePattern ? print(1) : print(0)