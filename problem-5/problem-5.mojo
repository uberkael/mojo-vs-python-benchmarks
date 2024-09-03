fn findTheDifference(s:String, t:String) -> String:
    var result = str("")

    for i in range(len(t)):
        if s[i] != t[i]:
            result = t[i]

    return result


fn main():
    for _ in range(100000):
        _ = findTheDifference("abcd", "abced")
