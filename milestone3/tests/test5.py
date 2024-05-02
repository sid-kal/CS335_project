def basics()->None:
# Arithmetic operators
    a: int = 10
    b: int = 5

    addition: int = a + b
    subtraction: int = a - b
    multiplication: int = a * b
    division: int = a / b
    floor_division: int = a // b
    modulo: int = a % b
    exponentiation: int = a ** b
    # print(1/2)
    # Relational operators
    is_equal: bool = a == b
    not_equal: bool = a != b
    greater_than: bool = a > b
    less_than: bool = a < b
    greater_than_or_equal: bool = a >= b
    less_than_or_equal: bool = a <= b

    # Logical operators
    logical_and: bool = (a > 5) and (b < 10)
    logical_or: bool = (a < 5) or (b > 10)
    logical_not_a: bool = not (a > 5)
    logical_not_b: bool = not (b < 10)

    # Bitwise operators
    bitwise_and_op: int = a & b
    bitwise_or_op: int = a | b
    bitwise_xor_op: int = a ^ b
    bitwise_complement_a: int = ~a
    bitwise_complement_b: int = ~b
    left_shift_op: int = a << b
    right_shift_op: int = a >> b

    # Assignment operators
    c: int = 15
    c += 5  # c = c + 5
    c -= 3  # c = c - 3
    c *= 2  # c = c * 2
    c %= 2  # c = c % 2
    c //= 3  # c = c // 3
    c **= 3  # c = c ** 3
    c &= 1  # c = c & 1
    c |= 3  # c = c | 3
    c ^= 5  # c = c ^ 5
    c <<= 2  # c = c << 2
    c >>= 1  # c = c >> 1
    # c /= 4  # c = c / 4

    print("Arithmetic operators:")
    print(addition)
    print(subtraction)
    print(multiplication)
    # print(division)
    print(floor_division)
    print(modulo)
    print(exponentiation)

    print("\nRelational operators:")
    print(is_equal)
    print(not_equal)
    print(greater_than)
    print(less_than)
    print(greater_than_or_equal)
    print(less_than_or_equal)

    print("\nLogical operators:")
    print(logical_and)
    print(logical_or)
    print(logical_not_a)
    print(logical_not_b)

    print("\nBitwise operators:")
    print(bitwise_and_op)
    print( bitwise_or_op)
    print( bitwise_xor_op)
    print( bitwise_complement_a)
    print( bitwise_complement_b)
    print(left_shift_op)
    print( right_shift_op)

    print("\nAssignment operators:")

    print(c)  # Print the final value after applying all assignment operators



# if-elif-else statement
def check_number(num: int) -> str:
    if num > 0:
        return "Positive"
    elif num < 0:
        return "Negative"
    else:
        return "Zero"
    return ""



# for loop with range()
def sum_of_numbers(limit: int) -> int:
    total: int = 0
    i:int
    for i in range(1, limit + 1):
        total += i
    return total



# while loop with break and continue
def even_numbers(limit: int) -> list[int]:
    evens: list[int] = [0,0,0,0,0,0,0,0,0,0]
    num: int = 0
    while num < limit:
        num += 1
        if num % 2 == 0:
            evens[num//2]=num
        else:
            continue  # Skip odd numbers
        if len(evens) == 3:
            break  # Exit loop after finding 3 even numbers
    return evens


# Print results



def calculate_sum(n: int) -> None:
    result_while: list[int] = even_numbers(10)
    result_if: str = check_number(5)
    result_for: int = sum_of_numbers(5)
    print("if-elif-else result:")
    print(result_if)
    print("for loop result:")
    print(result_for)
    print("while loop result:")
    i:int
    for i in range(len(result_while)):
        print(result_while[i])

# Recursion
def factorial(n: int) -> int:
    if n <= 1:
        return 1
    else:
        return n * factorial(n-1)
    return -1

# Classes and objects
class Shape:
    def __init__(self, name: str) -> None:
        self.name :str= name

    def get_name(self) -> str:
        return self.name

class Square(Shape):
    def __init__(self, name: str, side_length: int) -> None:
        self.name = name
        self.side_length :int= side_length

    def area(self) -> int:
        return self.side_length ** 2

class Math:
    def __init__(self):
        1
    def add(self, x: int, y: int) -> int:
        return x + y


# Main function
def main() -> None:
    calculate_sum(5)
    basics()
    
    print(factorial(4))

    square :Square= Square("Square", 4)
    print(square.get_name())
    print(square.area())
    math: Math=Math()
    print(math.add(2, 3))

if __name__ == "__main__":
    main()
