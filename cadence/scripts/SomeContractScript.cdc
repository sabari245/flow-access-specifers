import "SomeContract"

pub fun main() {
    SomeContract.testStruct.a = "new value" // public set so it can be modified
    log(SomeContract.testStruct.a)

    // SomeContract.testStruct.b = "new value" 
    // SomeContract.testStruct.c = "new value"
    // SomeContract.testStruct.d = "new value"

    SomeContract.testStruct.publicFunc()
    // SomeContract.testStruct.contractFunc()
    // SomeContract.testStruct.privateFunc()
}
