# Print all the natural numbers between a number n and a number m
# Natural numbers > 0
# But sometimes the zero is also included as a natural number
# https://en.wikipedia.org/wiki/Natural_number


def main():
    n = float(input("Number n: "))
    m = float(input("Number m: "))

    # organize the numbers if the user put them wrong
    # if n > m:
    #    n, m = m, n

    # if no natural numbers were founded, finish execution
    if n < 0 and m < 0:
        print("No natural numbers here")
        exit(-1)
    # Jump all the negatives
    current_number = 0 if n < 0 else n
    # jump  to the first natural number
    current_number = int(current_number) + 1 if current_number > int(current_number) else int(current_number)
    while current_number <= m:
        print(current_number)
        current_number += 1


if __name__ == '__main__':
    main()
