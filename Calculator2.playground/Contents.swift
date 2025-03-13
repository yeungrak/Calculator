import UIKit

class add {
    func add (a: Int, b: Int) -> Int? { //더하기
        let (result, isOverflow) = a.addingReportingOverflow(b)
        
        if isOverflow { //오버플로우 발생시 처리과정
            print("오버플로우 발생: 숫자가 너무 큽니다.")
            return nil
        }
        return a + b
    }
}
//빼기
class minus {
    func minus (a: Int, b:Int) -> Int {
        return a - b
    }
}
//곱하기
class multi {
    func multi (a: Int, b: Int) -> Int? {
        return a * b
    }
}
//나누기
class division {
    func division (a: Int, b: Int) -> Int { //나누기
        return a / b
    }
}

//나머지 연산
class remainder {
    func remainder (a: Int, b: Int) -> Int? {
            //나누는 숫자가 0일때(예외 상황)
            if a == 0 || b == 0 {
                print("옳지 않은 숫자 입니다.")
                return nil
            }
            return a % b
        }
    }

class Calculator { //새로운 클래스 calculator를 만들어 계산을 처리해주는 클래스로 활용
    
    let addResult = add()
    let minusResult = minus()
    let multiResult = multi()
    let divisionResult = division()
    let remainderResult = remainder()
    
    func addfunc (a: Int, b: Int) -> Int? {
        return addResult.add(a: a, b: b)
    }
    func minusfunc (a: Int, b: Int) -> Int? {
        return minusResult.minus(a: a, b: b)
    }
    func multifunc (a: Int, b: Int) -> Int? {
        return multiResult.multi(a: a, b: b)
    }
    func divisionfunc (a: Int, b: Int) -> Int? {
        return divisionResult.division(a: a, b: b)
    }
    func remainderfunc (a: Int, b: Int) -> Int? {
        return remainderResult.remainder(a: a, b: b)
    }
}

let lastResult = Calculator()
// 예외 상황 처리 : ??
print(lastResult.addfunc(a: 1, b: 2) ?? "계산 불가")
print(lastResult.minusfunc(a: 4, b: 2) ?? "계산 불가")
print(lastResult.multifunc(a: 20, b: 10) ?? "계산 불가")
print(lastResult.divisionfunc(a: 20, b: 10) ?? "계산 불가")
print(lastResult.remainderfunc(a: 50, b: 2) ?? "계산 불가")
