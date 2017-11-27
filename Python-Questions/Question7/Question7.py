"""
    Question 7
    Python
    Adam Giaccaglia
"""

import requests
import re

if __name__ == "__main__":
    inputUrl = input("Insert url: ")
    res = requests.get(inputUrl)
    res.raise_for_status()

    tagRegex = '<[^>]*>'
    findAll = re.findall(tagRegex, res.text)
    sortedList = sorted(findAll)

    print(sortedList)
