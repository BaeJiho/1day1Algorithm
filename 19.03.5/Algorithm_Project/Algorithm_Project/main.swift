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


//빠른 A+B
/*
let line1 = readLine() ?? ""
let list = line1.split(separator: " ").map(String.init)
let first = Int(list[0]) ?? 0
let second = Int(list[1]) ?? 0

print(first+second)
*/

//시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.
/*
let line1 = Int(readLine() ?? "") ?? 0

switch line1 {
case 90...100:
    print("A")
case 80...89:
    print("B")
case 70...79:
    print("C")
case 60...69:
    print("D")
case 1...59:
    print("F")
default:
    break
}
*/
/*
 |\_/|
 |q p|   /}
 ( 0 )"""\
 |"^"`    |
 ||_/=\\__|
 */
//print("|\\_/|")
//print("|q p|   /}")
//print("( 0 )\"\"\"\\")
//print("|\"^\"`    |")
//print("||_/=\\\\__|")

/*
 상근이는 요즘 설탕공장에서 설탕을 배달하고 있다. 상근이는 지금 사탕가게에 설탕을 정확하게 N킬로그램을 배달해야 한다. 설탕공장에서 만드는 설탕은 봉지에 담겨져 있다. 봉지는 3킬로그램 봉지와 5킬로그램 봉지가 있다.
 
 상근이는 귀찮기 때문에, 최대한 적은 봉지를 들고 가려고 한다. 예를 들어, 18킬로그램 설탕을 배달해야 할 때, 3킬로그램 봉지 6개를 가져가도 되지만, 5킬로그램 3개와 3킬로그램 1개를 배달하면, 더 적은 개수의 봉지를 배달할 수 있다.
 
 상근이가 설탕을 정확하게 N킬로그램 배달해야 할 때, 봉지 몇 개를 가져가면 되는지 그 수를 구하는 프로그램을 작성하시오.
 */
/*
let line1 = readLine() ?? ""
let input = Int(line1) ?? 0

var result: Int =  input / 5

print(result)//우선 큰 수부터 나눠보자

while result >= 0 {
    let three = input - (result * 5) // 1
    if three % 3 == 0 {
        print(result + (three / 3))
        break
    }
    result -= 1
    if result == -1 {
        print(-1)
    }
}
*/
//0보다 크거나 같고, 99보다 작거나 같은 정수가 주어질 때 다음과 같은 연산을 할 수 있다. 먼저 주어진 수가 10보다 작다면 앞에 0을 붙여 두 자리 수로 만들고, 각 자리의 숫자를 더한다. 그 다음, 주어진 수의 가장 오른쪽 자리 수와 앞에서 구한 합의 가장 오른쪽 자리 수를 이어 붙이면 새로운 수를 만들 수 있다. 다음 예를 보자.
//26부터 시작한다. 2+6 = 8이다. 새로운 수는 68이다. 6+8 = 14이다. 새로운 수는 84이다. 8+4 = 12이다. 새로운 수는 42이다. 4+2 = 6이다. 새로운 수는 26이다.
//위의 예는 4번만에 원래 수로 돌아올 수 있다. 따라서 26의 사이클의 길이는 4이다.
//N이 주어졌을 때, N의 사이클의 길이를 구하는 프로그램을 작성하시오.

let line1 = readLine() ?? ""

let n = Int(line1) ?? 0
var data = String(n)

var li: [Int] = []
var count = 0


for i in data.indices {
    let s = data[i]
    if let data = Int(String(s)) {
        li.append(data)
    }
}
if li.count >= 3 {
    print("error")
} else if li.count == 1 {
    li.insert(0, at: 0)
}
print(li)
var first = li[0]
var second = li[1]
var total = 0

total = first + second










//let line1 = Array(readLine() ?? "")
//var list = line1
//var s: [Int] = []
//if list.count >= 3 {
//    print("error")
//}
//if list.count == 1 {
//    if list[0] == "0" {
//        print("error")
//    } else {
//        list.insert("0", at: 0)
//    }
//
//}
//for i in list {
//    if let data = Int(String(i)) {
//        s.append(data)
//    }
//}

//let input = line1.split(separator: " ").map(String.init)
//let first = Int(input[0]) ?? 0
//let second = Int(input[1]) ?? 0

