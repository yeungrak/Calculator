import UIKit


protocol AbstractOperation {
    func calculator (a: Int, b: Int) -> Int?
}

class AddOperation:AbstractOperation {
    func calculator (a: Int, b: Int) -> Int? { //더하기
        let (result, isOverflow) = a.addingReportingOverflow(b)
        
        if isOverflow { //오버플로우 발생시 처리과정
            print("오버플로우 발생: 숫자가 너무 큽니다.")
            return nil
        }
        return a + b
    }
}
//빼기
class SubstractOperation:AbstractOperation {
    func calculator (a: Int, b:Int) -> Int? {
        return a - b
    }
}
//곱하기
class MultiplyOperation:AbstractOperation {
    func calculator (a: Int, b: Int) -> Int? {
        return a * b
    }
}
//나누기
class DivideOperation:AbstractOperation {
    func calculator (a: Int, b: Int) -> Int? { //나누기
        return a / b
    }
}

//나머지 연산
class Remainder:AbstractOperation {
    func calculator (a: Int, b: Int) -> Int? {
            //나누는 숫자가 0일때(예외 상황)
            if a == 0 || b == 0 {
                print("옳지 않은 숫자 입니다.")
                return nil
            }
            return a % b
        }
    }

class Calculator { //새로운 클래스 calculator를 만들어 계산을 처리해주는 클래스로 활용
    
    let operations : [AbstractOperation]
    
    init() {
        self.operations = [
            AddOperation(), SubstractOperation(), MultiplyOperation(), DivideOperation(), Remainder()
        ]
    }
    
    func calculateadd (a: Int, b: Int) -> Int? {
        return operations.AddOperation(a: a, b: b)
    }
}
let lastResult = Calculator()
print(lastResult.calculateadd(a: 1, b: 2))

