import Foundation

struct Point: Hashable {
    let y: Int
    let x: Int

    // Verifica se todos os pontos ao redor do ponto de valor 42 possuem valor 7
    func isSaber(matrix: [[String]]) -> Bool {
        if matrix[y][x + 1] == "7" && matrix[y][x - 1] == "7" 
        && matrix[y + 1][x + 1] == "7" && matrix[y + 1][x - 1] == "7" && matrix[y + 1][x] == "7" 
        && matrix[y - 1][x + 1] == "7" && matrix[y - 1][x - 1] == "7" && matrix[y - 1][x] == "7" {
            return true
        }
        else {
            return false
        }
    }
}


let matrixSize = readLine()!.split(separator: " ")
let ySize = Int(matrixSize[0])!
let xSize = Int(matrixSize[1])!

var matrix : [[String]] = []
var coordsFor42 : Set<Point> = []  // Set de pontos, representados por suas coordenadas, que possuem valor 42

for y in 0..<ySize {  // Para cada linha y
    let line = readLine()!.split(separator: " ").map {"\($0)"}  // Linha lida como array de valores em string
    matrix.append(line)  // Adiciona essa linha à matriz
    for x in 0..<xSize {  // Para cada valor x dessa linha y
        if matrix[y][x] == "42" {
            coordsFor42.insert(Point(y: y, x: x))  // Adiciona ponto de valor 42 ao set
        }
    }
}

var coordinate = "0 0"
for point in coordsFor42 {
    /* Verifica se é sabre apenas os pontos que possuem valor 42 E não estão presentes nas extremidades da matriz, 
    já que estes não podem ser cercados por pontos de valor 7 */
    if (point.x > 0 && point.x < xSize - 1) && (point.y > 0 && point.y < ySize - 1) {
        if point.isSaber(matrix: matrix) {
            coordinate = "\(point.y + 1) \(point.x + 1)"
            break
        }
    }
}
print(coordinate)
