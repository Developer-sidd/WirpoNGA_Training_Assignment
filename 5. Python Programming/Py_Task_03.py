# Create a Python list
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Demonstrate list slicing
# Get the first 5 elements
first_five = my_list[:5]
print("First 5 elements:", first_five)

# Get the elements from index 5 to the end
from_five_onward = my_list[5:]
print("Elements from index 5 onward:", from_five_onward)

# Get the elements from index 2 to 6
middle_elements = my_list[2:7]
print("Elements from index 2 to 6:", middle_elements)

# Get every second element
every_second_element = my_list[::2]
print("Every second element:", every_second_element)

# Append new elements to the list
my_list.append(11)
my_list.append(12)
print("List after appending 11 and 12:", my_list)

# Appending multiple elements using extend
my_list.extend([13, 14, 15])
print("List after extending with [13, 14, 15]:", my_list)
