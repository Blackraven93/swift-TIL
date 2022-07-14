# Basic

## Console
- print
- dump

## Type

### Int와 UInt

UInt: 양의정수

- Int.max: 최대값
- Int.min: 최소값

### Bool

- Bool.toggle(): 반전

### Float와 Double

Float: 6자리의 숫자
Double: 최소 15자리

임의의 수 만들기
Int.random(in: -100...100)
Uint.random(in: 1...33)
Double.random(in: 1.2...3.2)
Float.random(in: -0.4...0.4)

### Character

### String

- string.append(): 문자열 이어 붙이기
- string + string: 문자열 이어 붙이기
- string.count: 문자열 개수 세기
- string.isEmpty: 빈문자열 확인
- string.hasPrefix(string): 접두어 확인
- string.hasSuffix(string): 접미어 확인
- string.uppercased(): 대문자 변환
- string.lowercased(): 소문자 변환

### Tuple

```swift
var person: (String, Int, Double) = ("raven", 100, 12.3)
```

- person.0, person.1, person.2: 인덱스를 통해 가져오기
- typealias PersonTuple = (name: String, age: Int, height: Double)

## Collection

### Array

배열 생성
- var array: Array<String>
- var array: [String]
- var array: [String] = [String]()
- var array: [String] = Array<String>()
- var array: [String] = []

- array.isEmpty: 빈 배열 확인
- array.count: 배열의 원소 개수 확인
- array.append: 뒤에 보내기
- array.append(contentsOf: []): 배열들 뒤에 붙이기
- array.insert(value, at: index): at에 해당하는 인덱스에 value 삽입
- array.index(of: value): 해당 value의 index값
- array.first: 처음 원소
- array.last: 마지막 원소
- array.removeFirst(): 첫번째것 빼면서 값으로 저장
- array.removeLast(): 마지막것 빼면서 값으로 저장
- array.remove(at: index): 인덱스에 해당하는 값 제거
- array[start ... end]: start부터 end까지 원소 가져오기
- array[start ... end] = ["A", "B", "C"]: 교환 가능

