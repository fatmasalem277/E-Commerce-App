class ProductModel{
  int? id;
  String? name;
  double? price;
  String? image;
  bool? isFavorite;
  double? quantity;
  String? details;


  ProductModel({
    this.id,
    this.name,
    this.price,
    this.image,
    this.isFavorite,
    this.quantity,
    this.details,

  });
}
//----------
List<ProductModel> mainproductList = [
  ProductModel(
    id: 1,
    name: 'Smoothie',
    price: 60.00,
    image:
    'https://s7d1.scene7.com/is/image/mcdonalds/t-mcdonalds-Strawberry-Banana-Smoothie-Medium:product-header-desktop?wid=830&hei=458&dpr=off',
    isFavorite: true,
    quantity: 1,
    details: 'The McCafé® Strawberry Banana Smoothie recipe features the perfect combination of real strawberry and banana fruit purees and juices, blended with creamy low fat yogurt and ice. ',


  ),
  ProductModel(
    id: 2,
    name: 'Big Tasty',
    price: 122.5,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/Big-tasty-Beef.png',
    isFavorite: true,
    quantity: 1,
    details: 'What makes our Big Tasty so tasty? It’s the juicy beef patty smothered in three extraordinary slices of Emmental cheese, and topped with sliced tomato, shredded lettuce, onions and that special Big Tasty sauce.',

  ),
  ProductModel(
    id: 3,
    name: 'Cheese Burger',
    price: 30.00,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/CheeseBurger.png',
    isFavorite: true,
    quantity: 1,
    details: 'Sometimes all you need is a classic. A legendary combination of our 100% juicy beef, melty cheese, chopped onions, pickles, ketchup and mustard, all in a soft burger bun.',

  ),
  ProductModel(
    id: 4,
    name: 'Share Box',
    price: 165.00,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/Share-Box.png',
    isFavorite: true,
    quantity: 1,
    details: 'Share and enjoy our iconic items at a great price! Pick 2 sandwiches from Big Mac® (Beef/Chicken) and McChicken® + 2 sandwiches from Beef Burger, Cheeseburger and Chicken MacDo® + 2 regular Fries + 1.25 liter Coke.',

  ),
  ProductModel(
    id: 5,
    name: 'McRoyale',
    price: 113.00,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/McRoyal.png',
    isFavorite: true,
    quantity: 1,
    details: 'The McRoyale has it all! A juicy beef patty accompanied by cheese,covered with our special McRoyale sauce, crispy lettuce, fresh tomatoes, zesty onions and pickles all wrapped in a sesame seed bun.',

  ),
  ProductModel(
    id: 6,
    name: 'Cheese Fries',
    price: 36.00,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/Cheddar-Cheese-Fries-700x474.png',
    isFavorite: true,
    quantity: 1,
    details: 'The world\'s legendary Fries, topped with Cheddar cheese sauce and jalapenos .. and it\'s irresistible!',

  ),
  ProductModel(
    id: 7,
    name: 'Hash Browns',
    price: 10.99,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/hash-brown.png',
    isFavorite: true,
    quantity: 1,
    details: 'Deliciously tasty hash browns. Fluffy on the inside, crispy and toasty on the outside.',

  ),
  ProductModel(
    id: 8,
    name: 'Happy Meal',
    price: 45.00,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/HM-D-Beefburger.png',
    isFavorite: true,
    quantity: 1,
    details: 'Does your child love our Beefburger? Double it! Two simply delicious grilled 100% beef patties with onions, pickles, mustard and a dollop of tomato ketchup, all in a soft bun. Add to that a side of small fries and their favorite drink with a choice of milk, chocolate milk, or the following juices - orange, apple or tropical, and you\'ll make their day.',

  ),
  ProductModel(
    id: 9,
    name: 'McFalafel',
    price: 30.5,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/McFalafel.png',
    isFavorite: true,
    quantity: 1,
    details: 'Three pieces of falafel garnished with tomatoes, lettuce, onion, pickles and topped with Tehina sauce, all wrapped inside a freshly backed tortilla wrap.',

  ),
  ProductModel(
    id: 10,
    name: 'Apple Pie',
    price: 25.00,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/Apple-Pie.png',
    isFavorite: true,
    quantity: 1,
    details: 'Delicious apples, lightly spiced with cinnamon, baked in a flaky pastry.',

  ),
  ProductModel(
    id: 11,
    name: 'Caramel Sundae',
    price: 25.00,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/Caramel.png',
    isFavorite: true,
    quantity: 1,
    details: 'Cool and creamy vanilla soft serve meets rich and buttery caramel.',

  ),
  ProductModel(
    id: 12,
    name: 'Oreo McFlurry',
    price: 32.00,
    image:
    'https://www.mcdonalds.eg/Cms_Data/Contents/En/Media/images/Menu/large-Image/Oreo.png',
    isFavorite: true,
    quantity: 1,
    details: 'Vanilla soft serve with OREO® Cookies mixed in.',

  ),

];

List<ProductModel> favproductList = [];
List<ProductModel> cartproductList = [];


