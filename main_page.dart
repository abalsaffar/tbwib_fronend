import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String subcategory = '';
  String searchTerm = '';
  String userId = '';
  List<String> categories = ['Category 1', 'Category 2', 'Category 3'];

  void _onSubcategoryChanged(String value) {
    subcategory = value;
  }

  void _onSearchChanged(String value) {
    searchTerm = value;
  }

  void _onAddCategory() {
    // Code to add a new category
  }

  void _onAddContent() {
    // Code to add new content
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Column(
        children: [
          // Header
          Container(
            height: 100,
            child: Center(
              child: Text('Welcome to the Main Page!'),
            ),
          ),

          // Categories
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(categories[index]),
                  onTap: () {
                    // Code to show subcategories
                  },
                );
              },
              filter: (content, query) {
                return content.title.toLowerCase().contains(query.toLowerCase()) &&
                    content.userId == userId;
              },
            ),
          ),

          // Search filter
          Container(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
              ),
              onChanged: _onSearchChanged,
            ),
          ),

          // List of content
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Subcategory Item ${index + 1}'),
                );
              },
              filter: (content, query) {
                return content.title.toLowerCase().contains(query.toLowerCase()) &&
                    content.userId == userId;
              },
            ),
          ),
        ],
      ),
    );
  }
}
