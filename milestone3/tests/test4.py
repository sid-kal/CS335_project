
class Vehicle:
    def __init__(self, brand: str, year: int, color: str):
        self.brand: str = brand
        self.year: int = year
        self.color: str = color

    def display_info_veh(self) -> None:
        # return f"{self.color} {self.year} {self.brand}"
        print("Printing info:")
        print("Brand:")
        print(self.brand)
        print("Year:")
        print(self.year)
        print("Color:")
        print(self.color)
        

class Car(Vehicle):
    def __init__(self, brand: str, year: int, color: str, model: str):
        self.brand = brand
        self.year= year
        self.color = color
        self.model: str = model

    def display_info_car(self) -> None:
        self.display_info_veh()
        print("Model:")
        print(self.model)
        # return f"{self.color} {self.year} {self.brand} {self.model}"

class ElectricCar(Car):
    def __init__(self, brand: str, year: int, color: str, model: str, battery_capacity: int):
        self.brand = brand
        self.year= year
        self.color = color
        self.model = model
        self.battery_capacity: int = battery_capacity

    def display_info_elec(self) -> None:
        self.display_info_car()
        print('Battery capacity:')
        print(self.battery_capacity)
        # return f"{super().display_info()} with battery capacity {self.battery_capacity} kWh"

def main():
    car1 :Car = Car("Toyota", 2022, "Blue", "Camry")
    car1.display_info_car()  # Output: Blue 2022 Toyota Camry
    print("")
    electric_car : ElectricCar= ElectricCar("Tesla", 2023, "Red", "Model 3", 75)
    electric_car.display_info_elec()  # Output: Red 2023 Tesla Model 3 with battery capacity 75.0 kWh

if __name__ == "__main__":
    main()
