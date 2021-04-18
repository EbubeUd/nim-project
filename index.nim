import sequtils, sugar, strutils, os


#PROCEDURES AND OBJECTS
when false:
    echo "This is my first nim project :)"

    type
        Dog = object
        Cat = object


    proc bark(self: Dog) =
        echo "Dog: Woof!"

    proc bark(self: Cat) =
        echo "Cat: I am not a dog!"

    proc mew(self: Cat) = 
        echo "Cat: Mew!"

    proc mew(self: Dog) =
        echo "Dog: I am not a cat!"


    let dog = Dog()
    let cat = Cat()

    dog.bark()
    cat.bark()

    dog.mew()
    cat.mew()


    bark(dog)
    bark(cat)
    mew(cat)
    mew(dog)


#PROC AND FUNCTIONS
when false:
    let list = @["Ebube Ud Sr.", "Sered Ud", "Ud Ud"]

    list.echo

    list.map(
        (x: string) -> (string, string) => (x.split[0], x.split[1])
    ).echo


    for name in list:
        echo (name.split[0], " ",name.split[1])


#LOOPS AND CONDITIONALS
when false:
    for i in 0..<10:
        if i < 5:
            echo i, " is Less than 5"
        else:
            if i==5:
                echo i, " is equal to 5"
            else:
                echo i, " is greater than 5"


#INTEGERS
when false:
    let num = 41
    #let hex = 0x42
    let ans = 107 - num
    echo ans

    let a : int64 = 20
    let b = 16'i16

    let c : float = 2.2
    let d = 4.4'f

    let e = 'a'
    echo a,b,c,d,e


#SINGLE AND MULTILINE STRING
when false:
    #let text = r"The book title is \0 Hey"
    let multilineText = """
    Hello
    World
    Devs
    """
    echo multilineText
    echo multilineText.unindent


    var number :int = 0
    number = 10

    for i in 0..<10:
        number = i
        echo $number



#CONSTANTS
when false:
    proc fillString() : string =
        result = ""
        echo "Generating String..."
        for i in 0..<10:
            add(result, $i)


    const count = fillString()

    echo count



#VAR AND STROOPING (Strooping is the act of using keywords as variable names by appending an prepending them with `)
when false:
    var
        name = "Ebube"
        age = 24
        hubby = @["Reading", "Programming"]
        space = " "
        fooBar = "Foo Bar"
        `var` = "Var" 
    echo name,space,age,space,hubby,foobar,space,`var`


#ADVANCED PROCEDURES
when false:
    proc concatenate(name : string, id : uint) : string = 
        result = name & $id

    proc buildstring(str: varargs[string]) : string =
        for name in str:
            result.add(name & " ")

    proc add(values: varargs[int]) : int = 
        for value in values:
            result += value

    proc add(values: varargs[string]) : string =
        for value in values:
            result &= value

    proc task(day: string) : string =
        case day:
        of "Monday":
            result= "Stand up meeting with the Dev team"
        of "Tuesday":
            result = "Readup"
        of "Wednesday":
            result = "Code"
        of "Thursday":
            "Code".echo
            result = "Code"
        of "Friday":
            "Turn Up".echo
            result = "Turn Up"
            

when false:
    let numbers = @[1,2,3,4,5,6,7,8,9,10]
    let odd = numbers.filter( (x: int) -> bool => x mod 2 != 0)
    let even = numbers.filter((x : int) -> bool =>  x mod 2 == 0)
    odd.echo
    even.echo


when false:
    
    var word = concatenate("Ebube", 1)
    word.echo

    let sentence = buildstring("I", "Like", "Reading", "and", "programming")
    sentence.echo

    let solution = add(1,2,3,4)
    solution.echo

    let addWords = add($1,$2,$3,$4)
    addWords.echo

    discard task("Friday")


    discard concatenate("Sered", 2)


when false:   
    proc isValid(str : string, valid : proc (x : string) : bool) =
        if valid(str):
            echo "valid"
        else:
            echo "Invalid"

    isValid("Ebube",  (x : string) -> bool => true)



#ARRAYS AND SEQUENCES

when false:
    var listArr : array[10, int]
    var list : array[-10..0, int]
    list[-10] = -10

    for i in 0..<10:
        listArr[i] = i mod 2

    for i in -10..<1:
        list[i] = i


    for i in list:
        echo i

    for i in list.low..list.high:
        echo i
    list.repr.echo
    listArr.repr.echo

when false:

    var list = newSeq[int] (4)

    for i in 0..<10:
        if i < 3:
            list[i] = i
        elif i == 3:
            list[i] = i
        else:
            list.add(i)

    let age = if true : 2 else : 1
    age.echo

    var i = 0
    while i < 10:
        echo i
        i.inc

#BLOCKS AND ITERATORS
when false: 
    block Ebube:
        var trainingIntensity = 0
        while true:
            #Training Process
            trainingINTENSITY.inc
            if training_intensity > 10:
                """Lol... This is the dirtiest piece I have written. 
                But I have reached the threshold :)""".unindent.echo
                break Ebube

    iterator values() : int =
        for i in 0..<10:
            yield i

    for value in values():
        echo value

    for file in walkFiles("*.nim"):
        echo file


#SETS
when true:    
    let collection = {'a'..'z'}
    let sub = {'a', 'c', 'e', 'f'}
    let intr = collection * sub
    intr.echo
    let val = 'a' in collection
    val.echo


when true:
    let names = @["Ebube", "Sered", "Ifeanyi", "Ud"]

    for i, name in names:
        echo "Name at ", i , " is ", name


#EXCEPTIONS

proc err() =
    raise newException(IOError, "An Unexpected Error Occured")

proc function() = 
    err()

function()