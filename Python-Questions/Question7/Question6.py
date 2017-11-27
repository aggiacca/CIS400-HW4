"""
    Question 6
    Python
    Adam Giaccaglia
"""


def encode_or_decode(type, str, shift):
    alphaList = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
                 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

    outputLis = []
    for char in str:
        if char is ' ':
            outputLis.append(' ')
        else:
            if type in "Encode e E".split(" "):
                pos = alphaList.index(char) + shift
                # check and handle wrap
                if pos > len(alphaList):
                    pos -= len(alphaList)
                outputLis.append(alphaList[pos])
            if type in "Decode d D".split(" "):
                pos = alphaList.index(char) - shift
                # check and handle wrap
                if pos < 0:
                    pos += len(alphaList)
                outputLis.append(alphaList[pos])
    return outputLis


if __name__ == "__main__":
    e_or_d_input = input("Encode or Decode? Any other character to exit: ")
    while e_or_d_input in "Encode e E Decode d D".split(" "):
        inputStr = input("Input String: ")
        shift = int(input("Shift: "))
        result = encode_or_decode(e_or_d_input, inputStr, shift)
        print(''.join(result))
        e_or_d_input = input("Encode or Decode? Any other character to exit: ")

