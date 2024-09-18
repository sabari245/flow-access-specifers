import "SomeContract"

pub fun main(): String{
    SomeContract.testStruct.a = "new value" // public set so it can be modified

    // SomeContract.testStruct.b = "new value" 
    // SomeContract.testStruct.c = "new value"
    // SomeContract.testStruct.d = "new value"

    SomeContract.testStruct.publicFunc()
    // SomeContract.testStruct.contractFunc()
    // SomeContract.testStruct.privateFunc()

    return SomeContract.testStruct.a
}
