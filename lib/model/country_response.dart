class CountryResponse {
  List<NorthAmericaEurope>? northAmericaEurope;
  List<Asia>? asia;

  CountryResponse({this.northAmericaEurope, this.asia});

  CountryResponse.fromJson(Map<String, dynamic> json) {
    if (json['North America & Europe'] != null) {
      northAmericaEurope = <NorthAmericaEurope>[];
      json['North America & Europe'].forEach((v) {
        northAmericaEurope!.add(NorthAmericaEurope.fromJson(v));
      });
    }
    if (json['Asia'] != null) {
      asia = <Asia>[];
      json['Asia'].forEach((v) {
        asia!.add(Asia.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.northAmericaEurope != null) {
      data['North America & Europe'] =
          this.northAmericaEurope!.map((v) => v.toJson()).toList();
    }
    if (this.asia != null) {
      data['Asia'] = this.asia!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NorthAmericaEurope {
  String? name;
  String? description;
  String? image;

  NorthAmericaEurope({this.name, this.description, this.image});

  NorthAmericaEurope.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    return data;
  }
}

class Asia {
  String? name;
  String? description;
  String? image;

  Asia({this.name, this.description, this.image});

  Asia.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    return data;
  }
}

class CountryList {
  String? name;
  String? description;
  String? image;
  String? assetImage;

  CountryList({this.name, this.description, this.image, this.assetImage});

  CountryList.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    image = json['image'];
    assetImage = json['assetImages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['assetImages'] = this.assetImage;
    return data;
  }
}
