import re

'''
Chakobska Regex 
Author: Carlos Delgado Contreras 
Matricula: A01712819

Notas:
El simbolo $ da problemas entonces se limpio:
^[Cc](h(aum(as|urky)|erem|ouhada)|ielago)$

'''

def parse(inputs):
    words_lists = inputs.split(",")
    return words_lists

def accept(test_list):
    words_lists = parse(test_list)

    expression = r'^[Cc](h(aum(as|urky)|erem|ouhada)|ielago)$'

    for word in words_lists:
        if re.match(expression, word):
            print("The string:", word, "is part of the language")
        else:
            print("The string:", word, "isn't part of the language")

def main():
    while True:
        test_list = input("Enter a word: ")

        if not test_list:
            print("Empty word")
            break

        accept(test_list)

if __name__ == '__main__':
    main()