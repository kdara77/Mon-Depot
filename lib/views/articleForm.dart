import 'package:flutter/material.dart';

class ArticleEditForm extends StatefulWidget {
  @override
  _ArticleEditFormState createState() => _ArticleEditFormState();
}

class _ArticleEditFormState extends State<ArticleEditForm> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _category = '';
  String _description = '';

  List<String> _categories = [
    'Gouvernance locale',
    'Gouvernance politique et économique',
    'Paix et sécurité',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Article'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Titre de l\'article'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un titre';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value!;
                },
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Catégorie'),
                value: _category,
                items: _categories.map((category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _category = value!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez sélectionner une catégorie';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration:
                InputDecoration(labelText: 'Description de l\'article'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une description';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value!;
                },
                maxLines: 3,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Faites quelque chose avec les données du formulaire, comme les enregistrer dans une base de données.
                    // Exemple : saveArticle(_title, _category, _description);
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Article enregistré')));
                  }
                },
                child: Text('Enregistrer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*void main() {
  runApp(MaterialApp(
    home: ArticleEditForm(),
  ));
} */

