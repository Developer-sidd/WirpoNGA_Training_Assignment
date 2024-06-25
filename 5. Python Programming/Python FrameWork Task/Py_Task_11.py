import pytest
from add_number import add_numbers  # Replace 'your_module' with the actual module where add_numbers is defined

def test_add_numbers():
    assert add_numbers(3, 5) == 8
    assert add_numbers(-1, 1) == 0
    assert add_numbers(0, 0) == 0
    assert add_numbers(-5, -7) == -12

if __name__ == "__main__":
    pytest.main()
