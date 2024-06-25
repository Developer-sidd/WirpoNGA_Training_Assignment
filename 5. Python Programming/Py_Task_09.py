import re

def find_python_occurrences(text):
    pattern = r'\bPython\b'  # \b matches word boundaries to ensure exact word matching
    matches = re.findall(pattern, text)
    return matches

# Example usage:
text = """
Python is a widely used programming language.
Python's simplicity and readability make it great for beginners.
Python has a large community of developers.
"""

occurrences = find_python_occurrences(text)
print(f"Occurrences of 'Python': {occurrences}")
