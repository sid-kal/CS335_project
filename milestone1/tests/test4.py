

class Shape:
    def __init__(self, name: str):
        self.name: str = name

    def area(self) -> float:
        pass

    def perimeter(self) -> float:
        pass

    def display_info(self) -> None:
        print(f"Name: {self.name}")
        print(f"Area: {self.area()}")
        print(f"Perimeter: {self.perimeter()}")


class Rectangle(Shape):
    def __init__(self, name: str, length: float, width: float):
        super().__init__(name)
        self.length: float = length
        self.width: float = width

    def area(self) -> float:
        return self.length * self.width

    def perimeter(self) -> float:
        return 2 * (self.length + self.width)


class Circle(Shape):
    def __init__(self, name: str, radius: float):
        super().__init__(name)
        self.radius: float = radius

    def area(self) -> float:
        return 3.14 * self.radius ** 2

    def perimeter(self) -> float:
        return 2 * 3.14 * self.radius


# Static polymorphism via method overloading
class MathOperations:
    def add(self, x: float, y: float, z: float = None) -> float:
        if z is None:
            return x + y
        else:
            return x + y + z


def main() -> None:
    rectangle: Rectangle = Rectangle("Rectangle", 5, 4)
    circle: Circle = Circle("Circle", 3)

    rectangle.display_info()
    print()
    circle.display_info()
    print()

    math: MathOperations = MathOperations()
    print(math.add(2, 3))
    print(math.add(2, 3, 4))


if __name__ == "__main__":
    main()
