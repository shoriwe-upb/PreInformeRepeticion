def main():
    n = int(float(input("Number n: ")))
    if n >= 0:
        current_number = 0
        negative = True
        while current_number <= n:
            if negative:
                negative = False
                print(-current_number)
            else:
                negative = True
                print(current_number)
            current_number += 1


if __name__ == '__main__':
    main()
