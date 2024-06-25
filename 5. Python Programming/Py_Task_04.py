# Create a dictionary with personal information
personal_info = {
    "name": "Alice",
    "age": 25,
    "city": "New York"
}

# Print the initial dictionary
print("Initial dictionary:", personal_info)

# Update the age
personal_info["age"] = 26
print("Updated age:", personal_info)

# Add a new key-value pair for occupation
personal_info["occupation"] = "Engineer"
print("Added occupation:", personal_info)

# Change the city
personal_info["city"] = "San Francisco"
print("Updated city:", personal_info)

# Remove a key-value pair
del personal_info["age"]
print("Removed age:", personal_info)
