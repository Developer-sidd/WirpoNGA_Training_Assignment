def read_file_line_by_line(file_path):
    try:
        with open(file_path, 'r') as file:
            for line in file:
                print(line, end='')  # end='' prevents adding extra newlines
    except FileNotFoundError:
        print(f"The file {file_path} does not exist.")

# Example usage:
file_path = 'example.txt'
read_file_line_by_line(file_path)
