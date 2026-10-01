import 'package:flutter/material.dart';

import 'articleForm.dart';
import 'home.dart';
class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

 static const _ktabPages = [
  Home(),
    Center(
      child: Icon(Icons.gavel, size: 64, color: Colors.cyan,),
    ),
    Center(
      child: Icon(Icons.forum, size: 64, color: Colors.blue,),
    ),
   Center(
      child: Icon(Icons.edit, size: 64, color: Colors.red,),
    ),
  ];

  static const _kTabs = [
    Tab(icon: Icon(Icons.home), text: "Accueil",),
    Tab(icon: Icon(Icons.gavel), text: "Projet de loi",),
    Tab(icon: Icon(Icons.edit_note), text: "Participation citoyenne",),
    Tab(icon: Icon(Icons.edit), text: "Rapport",),
  ];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _kTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    
     
    return Scaffold(
      appBar: null,
        body: TabBarView(children: _ktabPages,
          controller: _tabController),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  ArticleEditForm()));
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: Material(
        color: Colors.green,
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}
