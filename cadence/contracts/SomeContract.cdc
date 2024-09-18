access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {

        //
        // 4 Variables
        //

        pub(set) var a: String

        pub var b: String

        access(contract) var c: String

        access(self) var d: String

        //
        // 3 Functions
        //

        pub fun publicFunc() {}

        access(contract) fun contractFunc() {}

        access(self) fun privateFunc() {}


        pub fun structFunc() {

            // Area 1
            // All the variables are accessible here for both read and write

            self.a = "w"
            self.b = "x"
            self.c = "y"
            self.d = "z"

            // All the functions are callable 
            self.publicFunc()
            self.contractFunc()
            self.privateFunc()

        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {
            // Area 2
            
            // none of the variables in SomeStruct are accessible here
            // we have to explicitly pass the reference to the struct to access its variables

            // no functions can be called from here 
        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {
        // Area 3

        self.testStruct.a = "a"
        // self.testStruct.b = "b" // accessible to read but not write
        // self.testStruct.c = "c" // accessible to read but not write

        self.testStruct.publicFunc()
        self.testStruct.contractFunc()

        // self.testStruct.privateFunc() 
    }

    init() {
        self.testStruct = SomeStruct()
    }
}
