abstract class CoffeeList {
  static const List<CoffeeData> cappucino = [
    CoffeeData(
      image: 'assets/images/cappuccino.jpg',
      name: 'Cappucino',
      title: 'With Oat Milk',
      price: '4.00',
    ),
    CoffeeData(
      image: 'assets/images/latte.jpg',
      name: 'Cappucino',
      title: 'With Almound Milk',
      price: '4.60',
    ),
    CoffeeData(
      image: 'assets/images/iced_coffee.jpg',
      name: 'Cappucino',
      title: 'With Chocolate',
      price: '5.20',
    ),
  ];
  static const List<CoffeeData> latte = [
    CoffeeData(
      image: 'assets/images/espresso.jpg',
      name: 'Latte',
      title: 'With Almound Milk',
      price: '3.48',
    ),
    CoffeeData(
      image: 'assets/images/iced_coffee.jpg',
      name: 'Latte',
      title: 'With Oat Milk',
      price: '4.55',
    ),
    CoffeeData(
      image: 'assets/images/americano.jpg',
      name: 'Latte',
      title: 'With Almound Milk',
      price: '4.68',
    ),
  ];
  static const List<CoffeeData> americano = [
    CoffeeData(
      image: 'assets/images/coffee1.jpg',
      name: 'Oat',
      title: 'With Almound Milk',
      price: '4.48',
    ),
    CoffeeData(
      image: 'assets/images/coffee2.jpg',
      name: 'Americano',
      title: 'With Almound Milk',
      price: '4.32',
    ),
    CoffeeData(
      image: 'assets/images/coffee3.jpg',
      name: 'Oat',
      title: 'With Almound Milk',
      price: '5.68',
    ),
  ];
  static const List<CoffeeData> espresso = [
    CoffeeData(
      image: 'assets/images/iced_coffee.jpg',
      name: 'Espresso',
      title: 'With Almound Milk',
      price: '6.48',
    ),
    CoffeeData(
      image: 'assets/images/latte.jpg',
      name: 'Espresso',
      title: 'With Almound Milk',
      price: '6.55',
    ),
    CoffeeData(
      image: 'assets/images/americano.jpg',
      name: 'Espresso',
      title: 'With Oat Milk',
      price: '6.72',
    ),
  ];
  static const List<CoffeeData> icedCoffee = [
    CoffeeData(
      image: 'assets/images/iced_coffee.jpg',
      name: 'Iced Coffee',
      title: 'With Oat Milk',
      price: '3.48',
    ),
    CoffeeData(
      image: 'assets/images/latte.jpg',
      name: 'Iced Coffee',
      title: 'With Almound Milk',
      price: '4.55',
    ),
    CoffeeData(
      image: 'assets/images/cappuccino.jpg',
      name: 'Iced Coffee',
      title: 'With Oat Milk',
      price: '4.68',
    ),
  ];
}

class CoffeeData {
  final String image;
  final String name;
  final String title;
  final String price;
  const CoffeeData({
    required this.image,
    required this.name,
    required this.title,
    required this.price,
  });
}
