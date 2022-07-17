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
모든 타입에는 count와 isEmpty 프로퍼티가 존재 

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

## Dictionary

딕셔너리 생성
typealias StringIntDictionary = [String: Int]
var dicTest: Dictionary<String, Int> = Dictionary<String, Int>()
var dicTest: [String: Int] = [String: Int]()
var dicTest: [String: Int] = [:] (빈배열 딕셔너리 생성)

- dict.isEmpty: 빈 딕셔너리 확인
- dict.count: 딕셔너리 원소 개수 확인
- dict.removeValue(forKey: "key"): 동일한 key값의 딕셔너리 삭제
- dict["raven", default: 0]: 없을 시 default 0으로 반환

## Set

집합 생성
var set: Set<String> = Set<String>()
var set: Set<String> = []

- set.isEmpty: 빈 집합 확인
- set.count: 집합 원소 개수 확인
- set.insert("string"): 집합에 값 넣기
- set.remove("string"): 값 제거

집합 메소드
- set.intersection(Set): 교집합
- set.symmetricDifference(Set): 여집합의 합
- set.union(Set): 합집합
- set.subtracting(Set): 차집합

- set.isDisjoint(with: Set): 서로 배타적이냐?
- set.isSubset(of: Set): self 집합이 인자집합의 부분집합인가?
- set.isSuperset(of: Set): self 집합은 인자집합의 전체집합인가?
