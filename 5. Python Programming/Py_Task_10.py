# List comprehension to generate squares of even numbers between 1 and 10
squares_of_evens = [x**2 for x in range(1, 11) if x % 2 == 0]

# Print the result
print("Squares of even numbers between 1 and 10:", squares_of_evens)
