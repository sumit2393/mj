class Categories {
  List<Subcategories> subcategories;
  List<AllProducts> allproducts;

  Categories({this.subcategories, this.allproducts});

  factory Categories.fromJson(Map<String, dynamic> json) {
    var subcategories = json['subcategories'] as List;
    List<Subcategories> subCategories = subcategories != null
        ? subcategories.map((i) => Subcategories.fromJson(i)).toList()
        : null;

    var allproducts = json['allproducts'] as List;
    List<AllProducts> allProducts = allproducts != null
        ? allproducts.map((i) => AllProducts.fromJson(i)).toList()
        : null;
    return (Categories(subcategories: subCategories, allproducts: allProducts));
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.subcategories != null) {
  //     data['subcategories'] =
  //         this.subcategories.map((v) => v.toJson()).toList();
  //   }
  //   if (this.allproducts != null) {
  //     data['allproducts'] = this.allproducts.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class Subcategories {
  int id;
  int mainCategoryId;
  String imagePath;
  String name;
  String createdAt;
  String updatedAt;

  Subcategories(
      {this.id,
      this.mainCategoryId,
      this.imagePath,
      this.name,
      this.createdAt,
      this.updatedAt});

  Subcategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mainCategoryId = json['main_category_id'];
    imagePath = json['image_path'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main_category_id'] = this.mainCategoryId;
    data['image_path'] = this.imagePath;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class AllProducts {
  AllProducts.fromJson(Map<String, dynamic> json) {
    print(json);
  }
}
