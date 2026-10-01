import 'dart:convert';

ArticleCategorie articleCategorieFromJson(String str) => ArticleCategorie.fromJson(json.decode(str));

String articleCategorieToJson(ArticleCategorie data) => json.encode(data.toJson());

class ArticleCategorie {
  int id;
  String titleCategorie;
  List<Article> articles;

  ArticleCategorie({
    required this.id,
    required this.titleCategorie,
    required this.articles,
  });

  factory ArticleCategorie.fromJson(Map<String, dynamic> json) => ArticleCategorie(
    id: json["id"],
    titleCategorie: json["titleCategorie"],
    articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "titleCategorie": titleCategorie,
    "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
  };
}

class Article {
  String title;
  String description;
  String imagePath;
  String createdAt;

  Article({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.createdAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    title: json["title"],
    description: json["description"],
    imagePath: json["imagePath"],
    createdAt: json["createdAt"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "imagePath": imagePath,
    "createdAt": createdAt,
  };
}

List<ArticleCategorie> articleCategories = [
  ArticleCategorie(id: 1, titleCategorie: "Gouvernance politique et économique", articles: [
    Article(title: "Analyse Xensa hebdomadaire de la Transition du 11 au 17 Avril 2022",
        description: "Le13 avril 2022, le conseil de ministre s’est réuni en session ordinaire. Durant cette session, le Conseil des Ministres a adopté un projet de décret.",
        imagePath: "assets/images/economie.png",
        createdAt: '21/04/2022'),

    Article(title: "Analyse Xensa hebdomadaire de la Transition du 04 au 11 Avril 2022",
        description: "Dans le communiqué N°026 de l’État-major Général des Armées du 01 Avril 2022, l’armée malienne affirme avoir procédé à une opération militaire aéroterrestre.",
        imagePath: "assets/images/economie.png",
        createdAt: '21/04/2022'),

    Article(title: "Analyse Xensa hebdomadaire de la Transition du 02 Mai 2022",
        description: "Sur le rapport du ministre de la Communication, de l'Économie numérique et de la Modernisation de l'Administration, le Conseil des Ministres a adopté, un projet de décret portant modification du Décret n°2017-0767/P-RM",
        imagePath: "assets/images/economie.png",
        createdAt: '09/05/2022'),

    //Article(title: "Art 4", description: "Desc 1", imagePath: "assets/images/art1.jpg", createdAt: '2024/03/5'),
  ]),


  ArticleCategorie(id: 2, titleCategorie: "Gouvernance Locale", articles: [
    Article(title: "BAFOULABÉ : Consultation et soins gratuits pour les malades du cercle",
        description: "La semaine de consultation et de soins gratuits des malades du district sanitaire de Bafoulabé a démarré ce (6/10/2021).\nLes patients seront consultés et soignés.",
        imagePath: "assets/images/gouvernanceLocal.png",
        createdAt: '12/10/2021'),

    Article(title: "État Souverain ; Qu'est faut-il expliquer de plus?",
        description: "Peut-être qu'il faut rappeler le concept d'un état souverain à ceux qui veulent nous imposer des choix. Cette souveraineté est reconnue à tout état.",
        imagePath: "assets/images/gouvernanceLocal.pngg",
        createdAt: '02/10/2021'),

    Article(title: "Un regard sur la question du Genre",
        description: "Nous avons tendance à faire la nuance sur la conception et surtout sur la compréhension du mot (genre). Il faut rappeler qu'il ne point fait de distinction basée sur le sexe dans ce concept sensible.",
        imagePath: "assets/images/gouvernanceLocal.png",
        createdAt: '01/11/2021'),

    //Article(title: "Art 4", description: "Desc 1", imagePath: "assets/images/art1.jpg", createdAt: '2024/03/5'),
  ]),

  ArticleCategorie(id: 3, titleCategorie: "Paix et Sécurité", articles: [
    Article(title: "COMITE DE SUIVI DE L’ACCORD, LES AUTORITES DE LA TRANSITION PROMETTENT DE REINTEGRER TREIZE MILLE ANCIENS COMBATTANTS D’ICI FIN 2021 1",
        description: "L’engagement a été pris par les parties maliennes pour mettre en œuvre l’Accord de paix à l’issue de la réunion du Comité de suivi de l’Accord à Bamako.",
        imagePath: "assets/images/paix.png",
        createdAt: '12/10/2021'),

    Article(title: "La route du poisson ou la nouvelle zone de turbulences au Mali",
        description: "Les régions du centre sont en proie des séries d'attaques meurtrières et malgré les nombreuses dénonciations et alertes des populations civiles, les réponses sécuritaires tardent à venir.",
        imagePath: "assets/images/paix.png",
        createdAt: '09/12/2021'),

    Article(title: "Bafoulabé : Plusieurs motocyclistes, armés ont été aperçus dans le nord du cercle la semaine dernière.",
        description: "Des habitants des communes du Nord du cercle ont affirmé la présence des présumés terroristes, selon nos sources, plus d'une quarantaine d'hommes armés sur des motos rodent dans les brousses.",
        imagePath: "assets/images/paix.png",
        createdAt: '17/01/2022'),
    //Article(title: "Art 4", description: "Desc 1", imagePath: "assets/images/art1.jpg", createdAt: '2024/03/5'),
  ]),
 /* ArticleCategorie(id: 4, titleCategorie: "Justice", articles: [
    Article(title: "Art 1", description: "Desc 1", imagePath: "assets/images/art1.jpg", createdAt: '2024/03/5'),
    Article(title: "Art 2", description: "Desc 1", imagePath: "assets/images/art1.jpg", createdAt: '2024/03/5'),
    Article(title: "Art 3", description: "Desc 1", imagePath: "assets/images/art1.jpg", createdAt: '2024/03/5'),
    Article(title: "Art 4", description: "Desc 1", imagePath: "assets/images/art1.jpg", createdAt: '2024/03/5'),
  ]), */
];
