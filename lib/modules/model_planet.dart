class PlanetModel {
  final String id;
  final String position;
  final String name;
  final String image;
  final String velocity;
  final String distance;
  final String description;

  PlanetModel({
    required this.id,
    required this.position,
    required this.name,
    required this.image,
    required this.velocity,
    required this.distance,
    required this.description,
  });

  factory PlanetModel.fromJson(Map<String, dynamic> json) {
    return PlanetModel(
      id: json['id'],
      position: json['position'],
      name: json['name'],
      image: json['image'],
      velocity: json['velocity'],
      distance: json['distance'],
      description: json['description'],
    );
  }
}
