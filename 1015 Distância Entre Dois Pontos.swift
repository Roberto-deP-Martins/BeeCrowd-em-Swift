import Foundation

var entrada = readLine()!.split(separator: " ")
let x1 = Float(entrada[0])!
let y1 = Float(entrada[1])!

entrada = readLine()!.split(separator: " ")
let x2 = Float(entrada[0])!
let y2 = Float(entrada[1])!

let deltaX = x2 - x1
let deltaY = y2 - y1
let distancia = sqrt(pow(deltaX, 2) + pow(deltaY, 2))
print(String(format: "%.4f", distancia))
