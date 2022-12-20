import Foundation

while true {
    var volume = 0.0
    var diameter = 0.0
    let volumeInput : String? = readLine()
    if volumeInput != nil {
        volume = Double(volumeInput!)!
    }
    else {
        break
    }
    let diameterInput : String? = readLine()
    if diameterInput != nil {
        diameter = Double(diameterInput!)!
    }
    else {
        break
    }
    let radius = diameter / 2.0
    let radiusSquared = radius * radius
    let height = volume / (3.14 * radiusSquared)
    let baseArea = 3.14 * radiusSquared
    print(String(format: "ALTURA = %.2f", height))
    print(String(format: "AREA = %.2f", baseArea))
}