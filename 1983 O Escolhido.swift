import Foundation

class Student {
    var id: String
    var score: Float

    init(id: String, score: Float) {
        self.id = id
        self.score = score
    }
}

let studentAmmount = Int(readLine()!)!
var bestStudent: String?
var bestGrade: Float = 0
for _ in 0..<studentAmmount {
    let dataLine = readLine()!.split(separator: " ")
    let student = Student(id: String(dataLine[0]), score: Float(dataLine[1])!)
    if student.score > bestGrade {
        bestGrade = student.score
        bestStudent = student.id
    }
}

if bestGrade < 8 {
    print("Minimum note not reached")
}
else {
    print(bestStudent!)
}