
import 'dart:convert';

Article articleFromJson(String str) => Article.fromJson(json.decode(str));

String articleToJson(Article data) => json.encode(data.toJson());

class Article {
  int id;
  String title;
  String description;
  String imagePath;
  String createdAt;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.createdAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    imagePath: json["imagePath"],
    createdAt: json["createdAt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "imagePath": imagePath,
    "createdAt": createdAt,
  };
}

List<Article> articles = [
  Article(id: 1, title: "KIDAL : ATTAQUE TERRORISTE.",
      description: "La semaine de consultation et de soins gratuits des malades du district sanitaire de Bafoulabé a démarré ce (6/10/2021). Les patients seront consultés et soignés par des équipes réparties entre le centre de santé de référence et les deux centres de santé communautaires. Le programme va durer une semaine. La cérémonie de lancement a été présidée par la conseillère principale du président de la Transition. Elle est organisée par le collectif des ressortissants et sympathisants en santé dans le cercle de Bafoulabé et parrainée par le Colonel Assimi Goïta.",
      imagePath: "assets/images/article1.jpg",
      createdAt: "12/10/2021"),

  Article(id: 2, title: "BAMAKO : CONSULTATION ET SOINS GRATUITS POUR DES MALADES DU CERCLE.",
      description: "La semaine de consultation et de soins gratuits des malades du district sanitaire de Bafoulabé a démarré ce (6/10/2021). Les patients seront consultés et soignés par des équipes réparties entre le centre de santé de référence et les deux centres de santé communautaires. Le programme va durer une semaine. La cérémonie de lancement a été présidée par la conseillère principale du président de la Transition. Elle est organisée par le collectif des ressortissants et sympathisants en santé dans le cercle de Bafoulabé et parrainée par le Colonel Assimi Goïta.",
      imagePath: "assets/images/article1.jpg",
      createdAt: "12/10/2021"),

  Article(id: 3, title: "KAYES : CONSULTATION ET SOINS GRATUITS POUR DES MALADES DU CERCLE.",
      description: "La semaine de consultation et de soins gratuits des malades du district sanitaire de Bafoulabé a démarré ce (6/10/2021). Les patients seront consultés et soignés par des équipes réparties entre le centre de santé de référence et les deux centres de santé communautaires. Le programme va durer une semaine. La cérémonie de lancement a été présidée par la conseillère principale du président de la Transition. Elle est organisée par le collectif des ressortissants et sympathisants en santé dans le cercle de Bafoulabé et parrainée par le Colonel Assimi Goïta.",
      imagePath: "assets/images/article1.jpg",
      createdAt: "12/10/2021"),

  Article(id: 4, title: "KOULIKORO : CONSULTATION ET SOINS GRATUITS POUR DES MALADES DU CERCLE.",
      description: "La semaine de consultation et de soins gratuits des malades du district sanitaire de Bafoulabé a démarré ce (6/10/2021). Les patients seront consultés et soignés par des équipes réparties entre le centre de santé de référence et les deux centres de santé communautaires. Le programme va durer une semaine. La cérémonie de lancement a été présidée par la conseillère principale du président de la Transition. Elle est organisée par le collectif des ressortissants et sympathisants en santé dans le cercle de Bafoulabé et parrainée par le Colonel Assimi Goïta.",
      imagePath: "assets/images/article1.jpg",
      createdAt: "12/10/2021"),
];

