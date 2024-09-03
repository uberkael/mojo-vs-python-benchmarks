fn lengthOfLastWord(enterword: String) -> Int:
    var count: Int = 0

    for i in range(len(enterword) - 1, -1, -1):
        if enterword[i] != " ":
            count += 1
        elif count > 0:
            break

    return count


fn main():
    for _ in range(100000):
        _ = lengthOfLastWord("Hello World")
