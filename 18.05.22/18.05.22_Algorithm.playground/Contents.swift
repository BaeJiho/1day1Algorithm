//: Playground - noun: a place where people can play

import UIKit
import Foundation

func timeConversion(s: String) -> String {
  
  let input = s
  var hr = ""
  var min = ""
  var second = ""
  var time = ""
  
  var temp = input.split(separator: ":").map(String.init)
  hr = temp[0]
  min = temp[1]
  second = temp[2]
  if s.contains("P") && hr != "12" {
    let hrTime = Int(hr)! + 12
    hr = String(hrTime)
    second.removeLast()
    second.removeLast()
  }
  if s.contains("A") && hr != "12" {
    second.removeLast()
    second.removeLast()
  }
  time = hr + ":" + min + ":" + second
  return time
}
timeConversion(s: "07:05:45PM")
