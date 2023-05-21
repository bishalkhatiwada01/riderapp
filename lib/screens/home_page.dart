import 'package:flutter/material.dart';
import 'package:riderapp/screens/list_fruits.dart';

class FruitListViewPage extends StatefulWidget {
  @override
  _FruitListViewPageState createState() => _FruitListViewPageState();
}

class _FruitListViewPageState extends State<FruitListViewPage> {
  final int itemsPerPage = 10;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final startIndex = currentPage * itemsPerPage;
    final endIndex = startIndex + itemsPerPage;
    final paginatedFruits = fruitsData.sublist(startIndex, endIndex);

    return Scaffold(
      appBar: AppBar(
        title: Text('List of fruit'),
      ),
      body: ListView.builder(
        itemCount: paginatedFruits.length,
        itemBuilder: (context, index) {
          final fruit = paginatedFruits[index];
          return Card(
            child: ListTile(
              title: Text(fruit['name']),
              subtitle: Text(fruit['description']),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: currentPage > 0
                    ? () {
                        setState(() {
                          currentPage--;
                        });
                      }
                    : null,
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: endIndex < fruitsData.length
                    ? () {
                        setState(() {
                          currentPage++;
                        });
                      }
                    : null,
                child: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
