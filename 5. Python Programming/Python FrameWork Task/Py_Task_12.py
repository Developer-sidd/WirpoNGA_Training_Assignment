import pytest

def divide_numbers(a, b):
    if b == 0:
        raise ValueError("Cannot divide by zero")
    return a / b

def test_divide_numbers():
    # Test case 1: Check division of two valid numbers
    assert divide_numbers(10, 2) == 5.0

    # Test case 2: Check division by zero
    with pytest.raises(ValueError):
        divide_numbers(10, 0)

    # Test case 3: Check division of zero by a number
    assert divide_numbers(0, 5) == 0.0

if __name__ == "__main__":
    pytest.main()
