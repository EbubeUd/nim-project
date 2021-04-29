import strutils, parseopt

when false:
    let param : string = "--port=20"
    let param2 : string = "--port:20"
    let split = param.split({'=', ':'})
    let split2 = param2.split({'=', ':'})
    echo split
    echo split2

for kind, key, val in getopt():
    case kind
    of cmdArgument:
        echo "got argument: ", key
    of cmdLongOption, cmdShortOption:
        case key
        of "port":
            echo "port is ", val
        else:
            echo "other key, --",key, " is ", val
    of cmdEnd:
        discard