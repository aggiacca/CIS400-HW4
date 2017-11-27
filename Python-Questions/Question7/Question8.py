"""
    Question 8
    Python
    Adam Giaccaglia
"""

if __name__ == "__main__":
    f = open('input_q8.dat', 'r')
    combinedStr = ''
    for line in f:
        combinedStr += line
    combinedStr = combinedStr.lower()

    alpha = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    countAlpha = []
    for char in alpha:
        countAlpha.append(char + ': ' + str(combinedStr.count(char, 0, len(combinedStr))))

    f = open('count.dat', 'w')
    for mode in countAlpha:
        f.write(mode + '\n')
