import 'package:flutter/material.dart';
import 'package:my_project/views/articles.dart';


class DetailsPublications extends StatefulWidget {
  const DetailsPublications({Key? key}) : super(key: key);

  @override
  State<DetailsPublications> createState() => _DetailsPublicationsState();
}

class _DetailsPublicationsState extends State<DetailsPublications> {

  Widget titleSection =  Container(
    padding: const EdgeInsets.all(8),
    child: Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom:8),
              child:  Text("État Souverain : Qu'est faut-il expliquer de plus?",
                  style: TextStyle (
                      fontWeight: FontWeight.bold, fontSize: 20

                  )),
            ),
            Text("Peut-être qu'il faut rappeler le concept d'un état souverain à ceux qui veulent nous imposer des choix. Cette souveraineté est reconnue à tout état alors pourquoi vouloir nous donner la leçon à nous ?",
              style: TextStyle(
                  color: Colors.grey[500]
              ),)
          ],
        ),
        ),
        //Icon(Icons.favorite, color:Colors.red),
        //const Text("55")
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {

    /*Widget buttonSection = Container(
      padding: const EdgeInsets.all(8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            _buildBottonColumn(Colors.blue, Icons.comment, "Commentaire") ,
            _buildBottonColumn(Colors.blue, Icons.comment, "Partager")
          ]) , ); */

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(8),
      child: Text(
        "- une population permanente;\n- un territoire déterminé ;\n- un gouvernement qui n'est subordonné à aucun autre ;\n- une capacité d'entrer en relation avec les autres États.\nPour ce qui est de la reconnaissance de l'État, « l'existence politique de l'État est indépendante de sa reconnaissance par les autres États »[4].\nCes dispositions, qui résultent de la Convention de Montevideo de 1933, sont acceptées internationalement comme un droit coutumier.\nNous sommes dans une situation où notre souveraineté n'est pas à mettre en cause car il n'y pas de souveraineté supérieure à une autre.\nNous sommes dans une situation où notre souveraineté n'est pas à mettre en cause car il n'y pas de souveraineté supérieure à une autre.\nAu terme de la définition, il est claire que le Mali jouit de pleinement de la permanence de sa population…Nous traversons un moment d'instabilité certes mais qu'à cela ne tienne le territoire du Mali n'est pas à remettre en cause non plus.Il est clair qu'au vu de la situation nous nous sommes retrouvé en situation de transition et à travers cette même souveraineté notre gouvernement en place bénéficie d'une légitimité reconnue par les maliens et c'est aux maliens qu'il revient de déterminer ses volontés autour des problèmes qui sont les siens.\nLe Mali a besoin de renaître de ses cendres et pour ça beaucoup de sacrifices doivent être fait à cet égard.\nLe Mali ne sera que ce que les maliens nouveaux décideront qu'il soit.Être maliens n'est pas un hasard, un être malien c'est une bénédictions.\nUn peuple-Un but-Une foi",
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("État Souverain : Qu'est faut-il expliquer de plus?"),
        backgroundColor: Colors.green[800],
      ),
      body: ListView(
        children: [
         Image.asset(
           'assets/images/logo_xensa.png',
            height: 160,
            width: 100,
           fit: BoxFit.cover,
          ),
        titleSection,
        //buttonSection,
        descriptionSection

        ],)
    );
  }
}

Column _buildBottonColumn(Color color, IconData icon, String label){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.all(8),
        child: Icon(icon, color:color ),
      ),
      Text(label,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color,
      ))
    ],
  );
}
