import 'dart:math';

List offer = [
  {
    'add': 'Biryani',
    'name': '40% OFF',
    'off': 'ABOVE ₹189',
    'rate':3.7,
    'img': 'assets/images/offer/biryani.jpeg',
    'foodname': 'Tawakal\nBiryani Center',
    'duration': '20-30 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Dindoli - 1.6 km',
    'name': '44% OFF',
    'off': 'ABOVE ₹119',
    'rate':2.5,
    'img': 'assets/images/offer/bhature.jpg',
    'foodname': 'Punjabi\nDhaba',
    'duration': '40-50 mins',
  },
  {
    'km': 'Athwa - 7.7 km',
    'add': 'Cakes and Pastries',
    'name': '21% OFF',
    'img': 'assets/images/offer/cake.jpeg',
    'off': 'UPTO ₹239',
    'rate':1.2,
    'foodname': 'Sainath Live\nCake',
    'duration': '15-20 mins',
  },
  {
    'add': 'Chinese',
    'km': 'Salabatpura - 6.2 km',
    'name': '20% OFF',
    'off': 'UPTO ₹349',
    'rate':4.7,
    'img': 'assets/images/offer/chinese.jpeg',
    'foodname': 'Chinese',
    'duration': '25-35 mins\n',
  },
  {
    'km': 'Udhna Gam - 2.6 km',
    'add': 'Butter Paratha',
    'name': '32% OFF',
    'off': 'UPTO ₹110',
    'rate':4.1,
    'img': 'assets/images/offer/paratha.jpeg',
    'foodname': 'Riya Ka\nKitchen',
    'duration': '20-30 mins',
  },
  {
    'km': 'New Textile Market - 7.2 km',
    'add': 'Pizza',
    'name': '49% OFF',
    'off': 'ABOVE ₹239',
    'rate':3.3,
    'img': 'assets/images/offer/pizza.jpg',
    'foodname': 'Pizza Castele',
    'duration': '20-30 mins\n',
  },
  {
    'add': 'North Indian, Paratha',
    'km': 'Sion - 2.2 km',
    'name': '50% OFF',
    'off': 'UPTO ₹100',
    'rate':4.6,
    'img': 'assets/images/offer/thepla.jpg',
    'foodname': 'Jassi De\nParathe',
    'duration': '35-45 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Udhna Gam - 3.9 km',
    'name': '43% OFF',
    'img': 'assets/images/offer/role.jpeg',
    'rate':3.5,
    'off': 'ABOVE ₹349',
    'foodname': 'Madina\nHotel',
    'duration': '40-45 mins',
  },
  // {
  //   'name': '43% OFF',
  //   'off': 'UPTO ₹300',
  //   'img': 'assets/images/food_images/pizza.jpeg',
  //   'foodname': 'Surti',
  //   'duration': '20-30 mins',
  // },
  // {
  //   'name': '52% OFF',
  //   'off': 'ABOVE ₹150',
  //   'img': 'assets/images/food_images/pizza.jpeg',
  //   'foodname': 'Vk icecream',
  //   'duration': '50-55 mins',
  // },
];
List restaurant = [
  {
    'add': 'Punjabi, North Indian, Paratha',
    'km': 'Sion - 2.2 km',
    'name': '50% OFF',
    'off': 'UPTO ₹100',
    'rate': '4.4k (100+)',
    'img': 'assets/images/offer/thepla.jpg',
    'foodname': 'Jassi De Parathe',
    'duration': '35-45 mins',
  },
  {
    'km': 'New Textile Market - 7.2 km',
    'add': 'Pizza, Desserts, Beverages',
    'name': '49% OFF',
    'off': 'ABOVE ₹239',
    'rate': '3.3k (1k+)',
    'img': 'assets/images/offer/pizza.jpg',
    'foodname': 'Pizza Castele',
    'duration': '20-30 mins',
  },
  {
    'km': 'Udhna Gam - 2.6 km',
    'add': 'Bihari, Fast Food',
    'name': '32% OFF',
    'off': 'UPTO ₹110',
    'rate': '4.1k (100+)',
    'img': 'assets/images/offer/paratha.jpeg',
    'foodname': 'Riya Ka Kitchen',
    'duration': '20-30 mins',
  },
  {
    'add': 'Chinese',
    'km': 'Salabatpura - 6.2 km',
    'name': '20% OFF',
    'off': 'UPTO ₹349',
    'rate': '4.7k (20+)',
    'img': 'assets/images/offer/chinese.jpeg',
    'foodname': 'Chinese',
    'duration': '25-35 mins',
  },
  {
    'add': 'Biryani',
    'name': '40% OFF',
    'off': 'ABOVE ₹189',
    'rate': '3.7k (100+)',
    'img': 'assets/images/offer/biryani.jpeg',
    'foodname': 'Tawakal Biryani \n   Center',
    'duration': '20-30 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Dindoli - 1.6 km',
    'name': '44% OFF',
    'off': 'ABOVE ₹119',
    'rate': '2.5k (20)',
    'img': 'assets/images/offer/bhature.jpg',
    'foodname': 'Punjabi Dhaba',
    'duration': '40-50 mins',
  },
  {
    'km': 'Athwa - 7.7 km',
    'add': 'Cakes and Pastries, Bakery',
    'name': '21% OFF',
    'img': 'assets/images/offer/cake.jpeg',
    'off': 'UPTO ₹239',
    'rate': '1.2k (3)',
    'foodname': 'Sainath Live Cake',
    'duration': '15-20 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Udhna Gam - 3.9 km',
    'name': '43% OFF',
    'img': 'assets/images/offer/role.jpeg',
    'rate': '3.5k (1k+)',
    'off': 'ABOVE ₹349',
    'foodname': 'Madina Hotel',
    'duration': '40-45 mins',
  },
];

List imagelist = [
  {'foodName': 'Pizza', 'image': 'assets/images/food_images/pizza.jpeg'},
  {'foodName': 'Burger', 'image': 'assets/images/food_images/burger.jpeg'},
  {'foodName': 'Samosa', 'image': 'assets/images/food_images/samosa.jpeg'},
  {'foodName': 'Pavbhaji', 'image': 'assets/images/food_images/pavbhaji.jpeg'},
  {'foodName': 'Chinese', 'image': 'assets/images/food_images/chinese.jpeg'},
  {'foodName': 'Biryani', 'image': 'assets/images/food_images/biryani.png'},
  {'foodName': 'Poori', 'image': 'assets/images/food_images/poori.png'},
  {'foodName': 'Pasta', 'image': 'assets/images/food_images/pasta.jpeg'},
  {'foodName': 'Lassi', 'image': 'assets/images/food_images/lassi.png'},
  {'foodName': 'Dhokla', 'image': 'assets/images/food_images/dhokla.jpeg'},
];

List imagelist1 = [
  {'fdnam': 'Momos', 'image': 'assets/images/food_images/momos.jpeg'},
  {'fdnam': 'Rolls', 'image': 'assets/images/food_images/roll.png'},
  {'fdnam': 'Sandwich', 'image': 'assets/images/food_images/sandwich.png'},
  {'fdnam': 'Shakes', 'image': 'assets/images/food_images/chocolate.jpeg'},
  {'fdnam': 'Dosa', 'image': 'assets/images/food_images/dosa.png'},
  {'fdnam': 'Noodles', 'image': 'assets/images/food_images/noodles.jpeg'},
  {'fdnam': 'Cake', 'image': 'assets/images/food_images/cake.png'},
  {'fdnam': 'Kachori', 'image': 'assets/images/food_images/kachori.jpeg'},
  {'fdnam': 'Salad', 'image': 'assets/images/food_images/salad.jpeg'},
  {'fdnam': 'Vada', 'image': 'assets/images/food_images/vada.png'},
];

List listOfFood = [
  biryaniList,choleBhatureList,cakeList,chineseDishesList,parathaList,pizzaList,parathaList,rollList
];

List biryaniList = [
  {
    'name': 'Hyderabadi Biryani',
    'price': 250,
    'rate': 4.5,
    'order': 1325,
    'description':
        'Aromatic rice with tender chicken or mutton, infused with saffron and spices.',
  },
  {
    'name': 'Lucknowi Biryani',
    'price': 300,
    'rate': 4.2,
    'order': 327,
    'description':
        'Slow-cooked basmati rice with fragrant mutton, rich in Awadhi spices.',
  },
  {
    'name': 'Kolkata Biryani',
    'price': 200,
    'rate': 4.0,
    'description':
        'Traditional biryani with potatoes, eggs, and succulent chicken or mutton.',
  },
  {
    'name': 'Sindhi Biryani',
    'price': 280,
    'rate': 4.3,
    'order': 925,
    'description':
        'Spicy rice dish layered with mutton or chicken, yogurt, and a variety of spices.',
  },
  {
    'name': 'Malabar Biryani',
    'price': 270,
    'rate': 4.6,
    'order': 100,
    'description':
        'South Indian delicacy made with fragrant rice, coconut milk, and seafood.',
  },
  {
    'name': 'Vegetable Biryani',
    'price': 180,
    'rate': 4.1,
    'order': 200,
    'description':
        'Flavorful rice cooked with mixed vegetables, nuts, and aromatic spices.',
  },
  {
    'name': 'Paneer Biryani',
    'price': 220,
    'rate': 4.4,
    'order': 350,
    'description':
        'Rice dish made with succulent paneer (Indian cottage cheese), yogurt, and spices.',
  },
  {
    'name': 'Egg Biryani',
    'price': 190,
    'rate': 4.2,
    'order': 455,
    'description':
        'Delicious biryani layered with boiled eggs, fragrant rice, and subtle spices.',
  },
  {
    'name': 'Keema Biryani',
    'price': 320,
    'rate': 4.3,
    'description':
        'Savory rice preparation with minced meat, cooked to perfection with spices.',
  },
  {
    'name': 'Dindigul Biryani',
    'price': 300,
    'rate': 4.5,
    'order': 50,
    'description':
        'Traditional Tamil Nadu biryani made with short-grain rice, tender mutton, and local spices.',
  },
];
List choleBhatureList = [
  {
    'name': "Punjabi Chole Bhature",
    'price': 120,
    'rate': 4.8,
    'order': 99,
    'description': "Authentic Punjabi Chole Bhature with rich spices.",
  },
  {
    'name': "Amritsari Chole Bhature",
    'price': 150,
    'rate': 4.7,
    'order': 255,
    'description': "Famous Amritsari style with a tangy twist.",
  },
  {
    'name': "Delhi Chole Bhature",
    'price': 100,
    'rate': 4.5,
    'order': 81,
    'description': "Popular Delhi street food, crispy and delicious.",
  },
  {
    'name': "Mumbai Chole Bhature",
    'price': 110,
    'rate': 4.4,
    'order': 46,
    'description': "Mumbai style Chole Bhature with a unique flavor.",
  },
  {
    'name': "Spicy Chole Bhature",
    'price': 130,
    'rate': 4.6,
    'order': 875,
    'description': "Extra spicy Chole Bhature for spice lovers.",
  },
  {
    'name': "Paneer Chole Bhature",
    'price': 140,
    'rate': 4.5,
    'order': 55,
    'description': "Chole Bhature topped with paneer for added taste.",
  },
  {
    'name': "Aloo Chole Bhature",
    'price': 125,
    'rate': 4.3,
    'order': 89,
    'description': "Chole Bhature with a hint of aloo for extra flavor.",
  },
  {
    'name': "Chatpata Chole Bhature",
    'price': 135,
    'rate': 4.6,
    'order': 25,
    'description': "Tangy and spicy Chole Bhature, a street food delight.",
  },
  {
    'name': "Special Chole Bhature",
    'price': 160,
    'rate': 4.9,
    'order': 84,
    'description': "Special recipe with secret spices, a must-try.",
  },
  {
    'name': "Desi Chole Bhature",
    'price': 115,
    'rate': 4.2,
    'order': 650,
    'description': "Traditional Desi style Chole Bhature, simple and tasty.",
  },
];
List cakeList = [
  {
    "name": "Chocolate Cake",
    "price": 500,
    "rate": 4.5,
    'order': 100,
    "description": "A rich and moist chocolate cake."
  },
  {
    "name": "Vanilla Cake",
    "price": 450,
    "rate": 4.2,
    'order': 45,
    "description": "A classic vanilla-flavored cake."
  },
  {
    "name": "Red Velvet Cake",
    "price": 600,
    "rate": 4.7,
    'order': 250,
    "description": "A delicious red velvet cake with cream cheese frosting."
  },
  {
    "name": "Black Forest Cake",
    "price": 550,
    "rate": 4.4,
    'order': 385,
    "description": "A layered chocolate cake with cherries and whipped cream."
  },
  {
    "name": "Carrot Cake",
    "price": 500,
    "rate": 4.3,
    'order': 400,
    "description": "A moist cake made with grated carrots and spices."
  },
  {
    "name": "Cheesecake",
    "price": 650,
    "rate": 4.8,
    'order': 1200,
    "description": "A rich and creamy cheesecake with a graham cracker crust."
  },
  {
    "name": "Lemon Cake",
    "price": 450,
    "rate": 4.1,
    'order': 14,
    "description": "A refreshing lemon-flavored cake."
  },
  {
    "name": "Strawberry Cake",
    "price": 550,
    "rate": 4.6,
    'order': 230,
    "description": "A delightful cake with fresh strawberries."
  },
  {
    "name": "Pineapple Cake",
    "price": 500,
    "rate": 4.2,
    'order': 715,
    "description": "A tropical pineapple-flavored cake."
  },
  {
    "name": "Marble Cake",
    "price": 480,
    "rate": 4.3,
    'order': 200,
    "description": "A cake with a mix of vanilla and chocolate batter swirled together."
  },
];
List chineseDishesList = [
  {
    'name': 'Sweet and Sour Pork',
    'price': 350,
    'rate': 4.5,
    'order': 514,
    'description': 'A popular Chinese dish with sweet and tangy flavors.',
  },
  {
    'name': 'Kung Pao Chicken',
    'price': 400,
    'rate': 4.7,
    'order': 100,
    'description': 'Spicy, stir-fried chicken with peanuts and vegetables.',
  },
  {
    'name': 'Spring Rolls',
    'price': 150,
    'rate': 4.3,
    'order': 500,
    'description': 'Crispy rolls filled with vegetables and meat.',
  },
  {
    'name': 'Ma Po Tofu',
    'price': 300,
    'rate': 4.4,
    'order': 485,
    'description': 'Tofu in a spicy, savory sauce with minced meat.',
  },
  {
    'name': 'Peking Duck',
    'price': 800,
    'rate': 4.8,
    'description': 'Crispy duck served with pancakes and hoisin sauce.',
  },
  {
    'name': 'Chow Mein',
    'price': 250,
    'rate': 4.2,
    'order': 632,
    'description': 'Stir-fried noodles with vegetables and meat.',
  },
  {
    'name': 'Dumplings',
    'price': 200,
    'rate': 4.6,
    'order': 789,
    'description': 'Steamed or fried pockets filled with meat or vegetables.',
  },
  {
    'name': 'Hot and Sour Soup',
    'price': 180,
    'rate': 4.1,
    'order': 159,
    'description': 'A spicy and tangy soup with tofu and vegetables.',
  },
  {
    'name': 'General Tso\'s Chicken',
    'price': 350,
    'rate': 4.5,
    'order': 125,
    'description': 'Deep-fried chicken in a sweet and spicy sauce.',
  },
  {
    'name': 'Fried Rice',
    'price': 220,
    'rate': 4.3,
    'order': 357,
    'description': 'Rice stir-fried with vegetables, eggs, and meat.',
  },
];
List parathaList = [
  {
    "name": "Aloo Paratha",
    "price": 50,
    "rate": 4.5,
    'order': 456,
    "description": "Stuffed with spiced mashed potatoes.",
  },
  {
    "name": "Paneer Paratha",
    "price": 60,
    "rate": 4.7,
    'order': 15,
    "description": "Stuffed with grated paneer and spices.",
  },
  {
    "name": "Gobi Paratha",
    "price": 55,
    "rate": 4.3,
    'order': 600,
    "description": "Stuffed with grated cauliflower and spices.",
  },
  {
    "name": "Mooli Paratha",
    "price": 50,
    "rate": 4.2,
    'order': 100,
    "description": "Stuffed with grated radish and spices.",
  },
  {
    "name": "Mixed Veg Paratha",
    "price": 65,
    "rate": 4.6,
    'order': 80,
    "description": "Stuffed with mixed vegetables and spices.",
  },
  {
    "name": "Cheese Paratha",
    "price": 70,
    "rate": 4.8,
    'order': 130,
    "description": "Stuffed with melted cheese and spices.",
  },
  {
    "name": "Keema Paratha",
    "price": 80,
    "rate": 4.4,
    'order': 13,
    "description": "Stuffed with spiced minced meat.",
  },
  {
    "name": "Onion Paratha",
    "price": 50,
    "rate": 4.1,
    'order': 20,
    "description": "Stuffed with spiced onions.",
  },
  {
    "name": "Methi Paratha",
    "price": 55,
    "rate": 4.3,
    'order': 1325,
    "description": "Stuffed with fenugreek leaves and spices.",
  },
  {
    "name": "Palak Paratha",
    "price": 50,
    "rate": 4.2,
    'order': 122,
    "description": "Stuffed with spiced spinach leaves.",
  },
];
List pizzaList = [
  {
    'name': 'Margherita',
    'price': 299,
    'rate': 4.5,
    'order': 150,
    'description': 'Classic delight with 100% real mozzarella cheese.',
  },
  {
    'name': 'Farmhouse',
    'price': 399,
    'rate': 4.7,
    'order': 145,
    'description': 'Delightful combination of onion, capsicum, tomato & grilled mushroom.',
  },
  {
    'name': 'Peppy Paneer',
    'price': 349,
    'rate': 4.6,
    'order': 231,
    'description': 'Chunky paneer with crisp capsicum and spicy red paprika.',
  },
  {
    'name': 'Veg Extravaganza',
    'price': 499,
    'rate': 4.8,
    'order': 1325,
    'description': 'Black olives, capsicum, onion, grilled mushroom, corn, tomato, jalapeno & extra cheese.',
  },
  {
    'name': 'Chicken Dominator',
    'price': 549,
    'rate': 4.7,
    'order': 416,
    'description': 'Loaded with double pepper barbecue chicken, peri-peri chicken, chicken tikka & grilled chicken rashers.',
  },
  {
    'name': 'Mexican Green Wave',
    'price': 399,
    'rate': 4.5,
    'order': 153,
    'description': 'Mexican herbs sprinkled on onion, capsicum, tomato & jalapeno.',
  },
  {
    'name': 'Deluxe Veggie',
    'price': 399,
    'rate': 4.6,
    'order': 759,
    'description': 'Veg delight - onion, capsicum, grilled mushroom, corn & paneer.',
  },
  {
    'name': 'Indi Tandoori Paneer',
    'price': 449,
    'rate': 4.7,
    'order': 486,
    'description': 'Tandoori paneer with capsicum, red paprika & mint mayo.',
  },
  {
    'name': 'Chicken Fiesta',
    'price': 479,
    'rate': 4.8,
    'order': 164,
    'description': 'Grilled chicken rashers, peri-peri chicken, onion & capsicum.',
  },
  {
    'name': 'Veggie Paradise',
    'price': 369,
    'rate': 4.5,
    'order': 124,
    'description': 'Golder corn, black olives, capsicum & red paprika.',
  },
];
List rollList = [
  {
    'name': 'Chicken Roll',
    'price': 150,
    'rate': 4.5,
    'order': 89,
    'description': 'Spicy grilled chicken wrapped in a flatbread with veggies.'
  },
  {
    'name': 'Paneer Roll',
    'price': 120,
    'rate': 4.2,
    'order': 70,
    'description': 'Delicious paneer tikka with fresh veggies in a wrap.'
  },
  {
    'name': 'Egg Roll',
    'price': 100,
    'rate': 4.0,
    'order': 45,
    'description': 'Egg omelette wrapped with onions and sauces.'
  },
  {
    'name': 'Veg Roll',
    'price': 80,
    'rate': 4.1,
    'order': 50,
    'description': 'Mixed vegetables cooked with spices and wrapped.'
  },
  {
    'name': 'Mutton Roll',
    'price': 200,
    'rate': 4.6,
    'order': 30,
    'description': 'Tender mutton pieces with special spices in a flatbread.'
  },
  {
    'name': 'Fish Roll',
    'price': 180,
    'rate': 4.3,
    'order': 10,
    'description': 'Fried fish fillets with a tangy sauce in a wrap.'
  },
  {
    'name': 'Beef Roll',
    'price': 220,
    'rate': 4.4,
    'order': 12,
    'description': 'Juicy beef slices with caramelized onions and peppers.'
  },
  {
    'name': 'Mixed Veg Roll',
    'price': 90,
    'rate': 4.0,
    'order': 1325,
    'description': 'A mix of seasonal veggies with flavorful spices.'
  },
  {
    'name': 'Cheese Roll',
    'price': 130,
    'rate': 4.1,
    'order': 100,
    'description': 'Melted cheese with herbs and veggies in a wrap.'
  },
  {
    'name': 'Tandoori Chicken Roll',
    'price': 160,
    'rate': 4.5,
    'order': 250,
    'description': 'Tandoori chicken pieces with mint chutney in a flatbread.'
  },
];

int selected=0;