// Car class
class Car {
  String name;
  double price;

  Car(this.name, this.price);

  void changePrice(double newPrice) {
    price = newPrice;
    print("The price of $name has been updated to ₹$price");
  }

  String toString() => "$name (₹$price)";
}

// Person class
class Person {
  String name;
  double moneyLeft;
  List<Car> ownedCars = [];

  Person(this.name, this.moneyLeft);

  void buyCar(Car car) {
    if (moneyLeft >= car.price) {
      ownedCars.add(car);
      moneyLeft -= car.price;
      print("$name bought the ${car.name} for ₹${car.price}");
    } else {
      print("$name does not have enough money to buy the ${car.name}");
    }
  }

  void sellCar(Car car) {
    if (ownedCars.contains(car)) {
      ownedCars.remove(car);
      moneyLeft += car.price;
      print("$name sold the ${car.name} for ₹${car.price}");
    } else {
      print("$name does not own the ${car.name}");
    }
  }

  void displayDetails() {
    print("\n$name");
    print("Money left: ₹$moneyLeft");
    print("Owned cars: ${ownedCars.isEmpty ? "None" : ownedCars.join(', ')}\n");
  }
}

void main() {
  // Create some cars
  Car car1 = Car("Honda City", 800000);
  Car car2 = Car("Hyundai i20", 600000);
  Car car3 = Car("Tata Nano", 150000);

  Person vedha = Person("Vedha", 1000000);
  vedha.displayDetails();
  vedha.buyCar(car2);
  vedha.buyCar(car3);

  vedha.buyCar(car1);
  vedha.displayDetails();

  vedha.sellCar(car3);
  vedha.displayDetails();

  vedha.sellCar(car1);
}
