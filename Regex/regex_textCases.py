"""
Author: Charly
Date: 03/06/2026
Project: Regex Testing
Purpose: Verify that the language parser correctly accepts or rejects words.
"""

import re

def parse(inputs):
    return inputs.split(",")

def accept(test_string):
    expression = r'^[Cc](h(aum(as|urky)|erem|ouhada)|ielago)$'

    if re.match(expression, test_string):
        return True
    else:
        return False

def run_tests():

    test_cases = [
        ("Hola", False),
        ("", False),
        ("Chaumas", True),
        ("Chaumerky", False),
        ("chaumas", True),
        ("chaumurky", True),
        ("cherem", True),
        ("chouhada", True),
        ("cielago", True),
        ("cielagoo", False),
        ("CHAUMAS", False),
        ("chauma", False),
        ("cherema", False),
        ("chouhda", False),
        ("cielag", False)
    ]

    print("===== RUNNING TESTS =====\n")

    passed = 0

    for i, (word, expected) in enumerate(test_cases, start=1):

        result = accept(word)

        status = "PASS" if result == expected else "FAIL"

        print(
            f"Test {i}: "
            f"Input='{word}' | "
            f"Expected={expected} | "
            f"Got={result} | "
            f"{status}"
        )

        if status == "PASS":
            passed += 1

    print(f"\nTests Passed: {passed}/{len(test_cases)}")

if __name__ == '__main__':
    run_tests()