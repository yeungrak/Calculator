import UIKit

class Calculator {
    
    func add (a: Int, b: Int) -> Int? { //더하기
        let (result, isOverflow) = a.addingReportingOverflow(b)
        
        if isOverflow {
            print("오버플로우 발생: 숫자가 너무 큽니다.")
            return nil
        }
        return a + b
    }
    func minus (a: Int, b:Int) -> Int { //빼기
        return a - b
    }
    func multi (a: Int, b: Int) -> Int? { //곱하기
        return a * b
    }
    func division (a: Int, b: Int) -> Int { //나누기
        return a / b
    }
    func remainder (a: Int, b: Int) -> Int? { //나머지 연산
        //나누는 숫자가 0일때(예외 상황)
        if a == 0 || b == 0 {
            print("옳지 않은 숫자 입니다.")
            return nil
        }
        return a % b
    }
}

