fn makeGood(s: String) -> String:
    var result = str("")
    var i = 0

    while i < len(s):
        if i < len(s) - 1 and abs(ord(s[i]) - ord(s[i + 1])) == 32:
            i += 2
        else:
            result = result + s[i]
            i += 1

    return result


fn main():
    for _ in range(1000000):
        _ = makeGood("leEeetcode")
