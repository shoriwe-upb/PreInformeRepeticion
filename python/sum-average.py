# Python 3.7
from sys import argv


# Interactively ask for the numbers
def interactive_read():
    total = 0
    counter = 0
    while True:
        number = input(f"Number {counter + 1}: ")
        try:
            number = float(number)
        except:
            break
        total += number
        counter += 1

    if not counter:
        counter = 1
    return total, counter


# Read from argv
def argv_read(arguments):
    try:
        return sum(map(float, arguments)), len(arguments)
    except:
        return 0, 1


def main():
    arguments = argv[1:]
    if len(arguments):
        total, counter = argv_read(arguments)
    else:
        total, counter = interactive_read()

    print(f"Sum: {total}")
    print(f"Average: {total / counter}")


if __name__ == "__main__":
    main()
