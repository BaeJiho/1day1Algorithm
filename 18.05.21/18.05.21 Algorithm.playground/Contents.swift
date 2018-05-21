//: Playground - noun: a place where people can play

import UIKit

//alice와 bob의 점수를 비교
//alice - a0, a1, a2
//  bob - b0, b1, b2
//각각 점수를 비교해서 큰점수에 해당하는 인원에게 스코어 점수 +

func solve(a0: Int, a1: Int, a2: Int, b0: Int, b1: Int, b2: Int) -> [Int] {
  var alicePoint = [a0,a1,a2]
  var bobPoint = [b0,b1,b2]
  var aliceScore = 0
  var bobScore = 0
  var result: [Int] = []
  
  for i in 0...2 {
    if alicePoint[i] > bobPoint[i]{
      aliceScore += 1
    } else if alicePoint[i] < bobPoint[i] {
      bobScore += 1
    }
  }
  result.append(aliceScore)
  result.append(bobScore)
  print(result)
  return result
}
solve(a0: 5, a1: 6, a2: 7, b0: 3, b1: 6, b2: 10)

