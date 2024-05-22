part of global;
class Product {
  final String description;
  final int finalPrice;
  final String imageUrl;
  final int mrp;
  final String name;
  final int rating;
  // final Category category;
  // final Offers offers;  // Single Offers object

  Product({
    required this.description,
    required this.finalPrice,
    required this.imageUrl,
    required this.mrp,
    required this.name,
    required this.rating,
    
  });

  factory Product.fromMap(Map<String, dynamic> data) {
    return Product(
      description: data['description'] ?? '',
      finalPrice: data['final_price'] ?? 0,
      imageUrl: data['image_url'] ?? '',
      mrp: data['mrp'] ?? 0,
      name: data['name'] ?? '',
      rating: data['rating'] ?? 0,
      
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'final_price': finalPrice,
      'image_url': imageUrl,
      'mrp': mrp,
      'name': name,
      'rating': rating,
      // 'category': category.toMap(),
      // 'offers': offers.toMap(),  // Convert offers to map
    };
  }
}

class Category {
  final String name;
  final String image;

  Category({
    required this.name,
    required this.image,
  });

  factory Category.fromMap(Map<String, dynamic> data) {
    return Category(
      name: data['name'] ?? '',
      image: data['image'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
    };
  }
}

class Offers {
  final String name;

  Offers({
    required this.name,
  });

  factory Offers.fromMap(Map<String, dynamic> data) {
    return Offers(
      name: data['offer_type'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'offer_type': name,
    };
  }
}
class Banners {
  final String name;

  Banners({
    required this.name,
  });

  factory Banners.fromMap(Map<String, dynamic> data) {
    return Banners(
      name: data['banner'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'banner': name,
    };
  }
}
