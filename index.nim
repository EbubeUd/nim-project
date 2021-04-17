import sequtils, sugar, strutils


#PROCESSES AND OBJECTS
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



#VAR AND STROOPING

var
    name = "Ebube"
    age = 24
    hubby = @["Reading", "Programming"]
    space = " "
    fooBar = "Foo Bar"
    `var` = "Var"
echo name,space,age,space,hubby,foobar,space,`var`
