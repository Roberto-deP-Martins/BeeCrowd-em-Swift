import Foundation

var inputData = readLine()!.split(separator: " ").map { Int($0)! }
while inputData[0] != 0 && inputData[1] != 0 {
    let monsterXPBoost = inputData[0]
    let monsterXP = inputData[1]
    print(monsterXP * monsterXPBoost)
    inputData = readLine()!.split(separator: " ").map { Int($0)! }   
}