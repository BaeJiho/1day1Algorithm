//: Playground - noun: a place where people can play

import UIKit

//alice와 bob의 점수를 비교
//alice - a0, a1, a2
//  bob - b0, b1, b2
//각각 점수를 비교해서 큰점수에 해당하는 인원에게 스코어 점수 +

//func solve(a0: Int, a1: Int, a2: Int, b0: Int, b1: Int, b2: Int) -> [Int] {
//  var alicePoint = [a0,a1,a2]
//  var bobPoint = [b0,b1,b2]
//  var aliceScore = 0
//  var bobScore = 0
//  var result: [Int] = []
//
//  for i in 0...2 {
//    if alicePoint[i] > bobPoint[i]{
//      aliceScore += 1
//    } else if alicePoint[i] < bobPoint[i] {
//      bobScore += 1
//    }
//  }
//  result.append(aliceScore)
//  result.append(bobScore)
//  print(result)
//  return result
//}
//solve(a0: 5, a1: 6, a2: 7, b0: 3, b1: 6, b2: 10)

//n살이면 [n개] example 4살 [3,1,2,3]
//케이크에 꽂은 촛불을 불어서 꺼야한다.
//대신 촛불의 height가 제일 높은것들만 끌 수 있다.
//height길이는 [n개]의 제일 큰 수
//ex)
//Input
//4 [3,1,2,3]
//Output
//2

func birthdayCakeCandles(n: Int, ar: [Int]) -> Int {
  var temp: [Int] = ar
  var result: Int = 0
  temp.sort()
  let lastTemp: Int = temp.last!
  print(lastTemp)
  for i in ar {
    if lastTemp == i {
      result += 1
    }
  }
  return result
}
birthdayCakeCandles(n: 4, ar: [3,1,2,3])

func timeConversion(s: String) -> String {
  var prefix: Bool = false
  var temp: String = s
  if prefix == temp.hasPrefix("PM") {
    print(prefix)
  }
  return ""
}

timeConversion(s: "07:05:45PM")


