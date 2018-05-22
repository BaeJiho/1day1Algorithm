# 1day1Algorithm

- 18.05.22

### hackerrank Tutorial

# - Num 1

<img width="760" alt="1" src="https://user-images.githubusercontent.com/35207193/40345625-f3938446-5dd4-11e8-97df-95df94f986a8.png">


```
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

```