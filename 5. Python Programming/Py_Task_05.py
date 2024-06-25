def factorial(n):
    """
    Calculate the factorial of a given number n.

    Parameters:
    n (int): The number to calculate the factorial for. Must be a non-negative integer.

    Returns:
    int: The factorial of the given number.
    """
    if n < 0:
        raise ValueError("Factorial is not defined for negative numbers.")
    elif n == 0 or n == 1:
        return 1
    else:
        result = 1
        for i in range(2, n + 1):
            result *= i
        return result

# Example usage:
number = 5
print(f"The factorial of {number} is {factorial(number)}")
