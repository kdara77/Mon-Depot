

import 'package:flutter/material.dart';
import 'package:my_project/modeles/article.dart';
import 'package:my_project/modeles/articleCategorie.dart';
import 'package:my_project/views/detailsPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Articles'),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
                  ListView.builder(
                    itemCount: articleCategories.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, indexCat) => Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        Text(articleCategories[indexCat].titleCategorie),
                        const Padding(padding: EdgeInsets.only(bottom: 20.0)),
                        Center(
                          child: SizedBox(
                            height: 270,
                            child: ListView.builder(
                              itemCount: articleCategories[indexCat].articles.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index ) => InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPublications()),);
                                },
                                child: Container(
                                  height: 250,
                                  width: 200,
                                  margin: const EdgeInsets.all(10),
                                  color: Colors.green[100],
                                  child: Column(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Image.asset(
                                              'assets/images/logo_xensa.png',
                                              height: 50,
                                              width: 100,
                                            ),
                                          ),
                                            // Image.network('https://koulouba.ml/wp-content/uploads/2020/07/a1.jpg', width: 100.0, height: 100.0)

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RichText(
                                        overflow: TextOverflow.ellipsis,
                                        strutStyle: StrutStyle(fontSize: 12.0),
                                        text: TextSpan(
                                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
                                            text: articleCategories[indexCat].articles[index].title
                                        ),
                                      ),
                                  ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: RichText(
                                              maxLines: 8,
                                            overflow: TextOverflow.ellipsis,
                                            strutStyle: StrutStyle(fontSize: 12.0),
                                            text: TextSpan(
                                                style: TextStyle(color: Colors.black),
                                                text: articleCategories[indexCat].articles[index].description
                                            ),
                                                                              ),
                                          ),
                                          // Text(articles[index].title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15), textAlign: TextAlign.justify),
                                          const Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                                          // Text(articles[index].description,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                                          const Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                                          // Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. $index" ),
                                          const Padding(padding: EdgeInsets.only(top: 5.0, bottom: 5.0)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),)
                ],
              ),
            ),
        ),
      );
  }
}
