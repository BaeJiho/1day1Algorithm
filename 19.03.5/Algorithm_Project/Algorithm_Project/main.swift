//
//  main.swift
//  Algorithm_Project
//
//  Created by 배지호 on 04/03/2019.
//  Copyright © 2019 baejiho. All rights reserved.
//

import Foundation

//1부터 N찍기
/*
 let line1 = readLine() ?? ""
 let input = Int(line1) ?? 0
 
 for i in 1...input {   //for문을 이용하여, 첫 숫자부터 입력한 숫자까지 프린트로 출력하는 것
 print(i)
 }
 */

//자연수 N이 주어졌을 때, N부터 1까지 한 줄에 하나씩 출력하는 프로그램을 작성하시오.
/*
 let line1 = readLine() ?? ""
 var input = Int(line1) ?? 0
 //while문을 이용하여, 반복적으로 돌면서 여기서 중요한 건  -=을 사용하여, 숫자를 줄이는 것 이 중요
 while input > 0 {
 print(input)
 input -= 1
 }
 */

//N을 입력받은 뒤, 구구단 N단을 출력하는 프로그램을 작성하시오. 출력 형식에 맞춰서 출력하면 된다.
/*
 let line1 = readLine() ?? ""
 let input = Int(line1) ?? 0
 //input을 기준으로 for문을 이용하여, 9까지 연산하고 그 둘의 곱을 출력
 for i in 1...9 {
 print("\(input) * \(i) = \(input * i)")
 }
 */

//첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
/*
 let line1 = readLine() ?? ""
 let input = Int(line1) ?? 0
 //for문을 이용하여, Input 카운터만큼 실행하고, 실행할 때 for문 안에 while문을 통하여, 해당 입력한 인풋 카운터만큼 실행하여, 별을 추가한다.
 
 for i in 1...input {
 var data = i
 var result = ""
 while data > 0 {
 result += "*"
 data -= 1
 }
 print(result)
 }
 */

//첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
//하지만, 오른쪽을 기준으로 정렬한 별(예제 참고)을 출력하시오.
/*
 let line1 = readLine() ?? ""
 let input = Int(line1) ?? 0
 
 for i in 1...input {
 var result = ""
 for _ in 1..<input-i+1 {
 result += " "
 }
 for _ in 1...i {
 result += "*"
 }
 print(result)
 }
 */

//첫째 줄에는 별 N개, 둘째 줄에는 별 N-1개, ..., N번째 줄에는 별 1개를 찍는 문제
/*
 let line1 = readLine() ?? ""
 let input = Int(line1) ?? 0
 
 for i in 1...input {
 var data = input
 var result = ""
 while data > i-1 {
 result += "*"
 data -= 1
 }
 print(result)
 }
 */

//첫째 줄에는 별 N개, 둘째 줄에는 별 N-1개, ..., N번째 줄에는 별 1개를 찍는 문제
//하지만, 오른쪽을 기준으로 정렬한 별(예제 참고)을 출력하시오.
/*
 let line1 = readLine() ?? ""
 let input = Int(line1) ?? 0
 
 for i in 1...input {
 var result = ""
 for _ in 0...i-1 {
 result += " "
 }
 for _ in 1...input-i+1 {
 result += "*"
 }
 print(result)
 }
 */
//오늘은 2007년 1월 1일 월요일이다. 그렇다면 2007년 x월 y일은 무슨 요일일까? 이를 알아내는 프로그램을 작성하시오.
//첫째 줄에 빈 칸을 사이에 두고 x(1≤x≤12)와 y(1≤y≤31)이 주어진다. 참고로 2007년에는 1, 3, 5, 7, 8, 10, 12월은 31일까지, 4, 6, 9, 11월은 30일까지, 2월은 28일까지 있다.

//여기서 중요한건 월이 늘어날 때 해당 일을 전부 더한뒤
/*
let line1 = readLine() ?? ""
let list = line1.split(separator: " ").map(String.init)

let first = Int(list[0]) ?? 0
let second = Int(list[1]) ?? 0

var day = 0
for i in 1..<first {
    if i == 1 || i == 3 || i == 5 || i == 7 || i == 9 || i == 12 {
        day += 31
    }
    if i == 4 || i == 6 || i == 9 || i == 11 {
        day += 30
    }
    if i == 2 {
        day += 28
    }
}

day += second // ex) for문을 이용하여, 해당 월 이전까지 day에 요일을 저장하고, 해당 월은 입력한 요일만 추가한다.

switch (day % 7) {
case 1:
    print("MON")
case 2:
    print("TUE")
case 3:
    print("WED")
case 4:
    print("THU")
case 5:
    print("FRI")
case 6:
    print("SAT")
case 7:
    print("SUN")
default:
    break
}
*/
