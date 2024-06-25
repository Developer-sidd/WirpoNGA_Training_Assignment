class Rectangle:
    def __init__(self, length, breadth):
        self.length = length
        self.breadth = breadth

    def area(self):
        return self.length * self.breadth

    def perimeter(self):
        return 2 * (self.length + self.breadth)

# Example usage:
rectangle = Rectangle(10, 5)
print(f"Area: {rectangle.area()}")        # Output: Area: 50
print(f"Perimeter: {rectangle.perimeter()}")  # Output: Perimeter: 30
