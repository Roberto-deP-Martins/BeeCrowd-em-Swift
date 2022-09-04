import Foundation

let tweetLenght = readLine()!.count
var output = "TWEET"
if tweetLenght > 140 {
    output = "MUTE"
}
print(output)
