import Foundation

struct MatrixPosition : Hashable {
    let line: Int
    let columm: Int
}

let linesAndColummsAmount = Int(readLine()!)!
var positionsWithCameras: Set<MatrixPosition> = []
for line in 0...linesAndColummsAmount {
    let currentLine = readLine()!.split(separator: " ").map { Int($0)! }
    for columm: Int in 0...linesAndColummsAmount {
        if currentLine[columm] == 1 {  // Salva posição das câmeras em um set
            positionsWithCameras.insert(MatrixPosition(line: line, columm: columm))
        }
    }
}
for i in 0..<linesAndColummsAmount {
    for j in 0..<linesAndColummsAmount {
        var cameraInQuadrantAmount = 0
        // Verifica em cada elemento do quadrante se há câmera 
        if positionsWithCameras.contains(MatrixPosition(line:i, columm: j))  {
            cameraInQuadrantAmount += 1
        }
        if positionsWithCameras.contains(MatrixPosition(line:i, columm: j + 1))  {
            cameraInQuadrantAmount += 1
        }
        if positionsWithCameras.contains(MatrixPosition(line:i + 1, columm: j))  {
            cameraInQuadrantAmount += 1
        }
        if positionsWithCameras.contains(MatrixPosition(line:i + 1, columm: j + 1))  {
            cameraInQuadrantAmount += 1
        }
        let terminator = j == linesAndColummsAmount - 1 ? "\n" : ""
        cameraInQuadrantAmount >= 2 ? print("S",terminator: terminator) : print("U", terminator: terminator)
    }
}
