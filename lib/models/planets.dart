class Planet {
  final int id;
  final String name;
  final String description;
  final String mass;
  final String imgUrl;
  final String volume;

  Planet(
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.mass,
    this.volume,
  );

  Planet.fromJson(dynamic json)
      : id = json['id'],
        name = json['name'],
        imgUrl = json['imgSrc'][0]['img'],
        description = json['description'],
        mass = json['basicDetails'][0]['mass'],
        volume = json['basicDetails'][0]['volume'];
}
