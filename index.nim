import sequtils, sugar, strutils

echo "This is my first nim project :)"

# for i in 0..<10:
#     echo "Hairy Jam. Episode", i

# type
#     Dog = object
#     Cat = object


# proc bark(self: Dog) =
#     echo "Dog: Woof!"

# proc bark(self: Cat) =
#     echo "Cat: I am not a dog!"

# proc mew(self: Cat) = 
#     echo "Cat: Mew!"

# proc mew(self: Dog) =
#     echo "Dog: I am not a cat!"


# let dog = Dog()
# let cat = Cat()

# dog.bark()
# cat.bark()

# dog.mew()
# cat.mew()


# bark(dog)
# bark(cat)
# mew(cat)
# mew(dog)

let list = @["Ebube Ud Sr.", "Sered Ud", "Ud Ud"]

list.echo

list.map(
    (x: string) -> (string, string) => (x.split[0], x.split[1])
).echo


for name in list:
    echo (name.split[0], " ",name.split[1])