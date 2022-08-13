import Foundation

var wakingHour: String?
repeat {
    wakingHour = readLine()
    if wakingHour != nil {
        let wakingHourData = wakingHour!.split(separator: ":")  // Separa horário em horas e minutos
        let wakingHourMinutes = (Int(wakingHourData[0])! * 60) + Int(wakingHourData[1])!  // Converte
        let maxDelay = 480 - (wakingHourMinutes + 60)
        
        if  maxDelay > 0 {  // Se a diferença de tempo entre o horário de despertar + tempo até terminal e horário de encontro é positivo, não há atraso 
            print("Atraso maximo: \(0)")
        }
        else {  // Se diferença é negativa, o valor absoluto dessa diferença é o atraso
            print("Atraso maximo: \(abs(maxDelay))")
        }
    }
} while wakingHour != nil  // Até não existir mais nada a ser lido