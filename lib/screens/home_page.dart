// // import 'package:flutter/material.dart';
// // import 'package:riderapp/screens/list_fruits.dart';
// //
// // class FruitListViewPage extends StatefulWidget {
// //   @override
// //   _FruitListViewPageState createState() => _FruitListViewPageState();
// // }
// //
// // class _FruitListViewPageState extends State<FruitListViewPage> {
// //   final int itemsPerPage = 10;
// //   int currentPage = 0;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final startIndex = currentPage * itemsPerPage;
// //     final endIndex = startIndex + itemsPerPage;
// //     final paginatedFruits = fruitsData.sublist(startIndex, endIndex);
// //
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('List of fruit'),
// //       ),
// //       body: ListView.builder(
// //         itemCount: paginatedFruits.length,
// //         itemBuilder: (context, index) {
// //           final fruit = paginatedFruits[index];
// //           return Card(
// //             child: ListTile(
// //               title: Text(fruit['name']),
// //               subtitle: Text(fruit['description']),
// //             ),
// //           );
// //         },
// //       ),
// //       bottomNavigationBar: BottomAppBar(
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               ElevatedButton(
// //                 onPressed: currentPage > 0
// //                     ? () {
// //                         setState(() {
// //                           currentPage--;
// //                         });
// //                       }
// //                     : null,
// //                 child: Icon(Icons.arrow_back),
// //               ),
// //               SizedBox(width: 16),
// //               ElevatedButton(
// //                 onPressed: endIndex < fruitsData.length
// //                     ? () {
// //                         setState(() {
// //                           currentPage++;
// //                         });
// //                       }
// //                     : null,
// //                 child: Icon(Icons.arrow_forward),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// import 'package:flutter/material.dart';
//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<String> data = List<String>.generate(20, (index) => '${index + 1} item');
//   bool isLoading = false;
//   ScrollController _scrollController = ScrollController();
//
//
//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_scrollListener);
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _scrollController.dispose();
//     _scrollController.removeListener(_scrollListener);
//   }
//
//
//   void _scrollListener(){
//
//     if(_scrollController.offset >= _scrollController.position.maxScrollExtent && !_scrollController.position.outOfRange){
//       if(!isLoading){
//         setState(() {
//           isLoading = true;
//         });
//         _loadMoreData();
//       }
//     }
//   }
//
//
//   Future<void> _loadMoreData()async{
//
//     await Future.delayed(const Duration(seconds: 2));
//
//     setState(() {
//       List<String> newData = List<String>.generate(10, (index) {
//         int itemIndex = data.length + index;
//         return "Item $itemIndex";
//       });
//       data.addAll(newData);
//       isLoading = false;
//     });
//
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue.shade100,
//         title: Text('Lazy loading example'),
//       ),
//
//       body: ListView.builder(
//         controller: _scrollController,
//         itemCount: data.length + 1,
//         itemBuilder: (context, index) {
//           if(index < data.length){
//             return ListTile(
//               title: Text(data[index]),
//             );
//           }else{
//             if (isLoading) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else {
//               return Container(); // Empty container at the end
//             }
//           }
//         },
//       ),
//     );
//   }
// }import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:riderapp/screens/list_fruits.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> data = [];
  bool isLoading = false;
  ScrollController _scrollController = ScrollController();
  final int itemsPerPage = 20;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    fetchData(); // Load initial data
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _scrollController.removeListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      if (!isLoading) {
        setState(() {
          isLoading = true;
        });
        _loadMoreData();
      }
    }
  }

  Future<void> fetchData() async {
    // Simulating fetching data from the database asynchronously
    await Future.delayed(const Duration(seconds: 2));
    final paginatedFruits = fruitsData.sublist(0, itemsPerPage);
    setState(() {
      data.addAll(paginatedFruits);
    });
  }

  Future<void> _loadMoreData() async {
    await Future.delayed(const Duration(seconds: 2));
    final startIndex = (currentPage + 1) * itemsPerPage;
    final endIndex = startIndex + itemsPerPage;
    final paginatedFruits = fruitsData.sublist(startIndex, endIndex);
    setState(() {
      data.addAll(paginatedFruits);
      isLoading = false;
      currentPage++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: const Text('Lazy loading example'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: data.length + 1,
        itemBuilder: (context, index) {
          if (index < data.length) {
            final fruit = data[index];
            return Card(
              child: ListTile(
                title: Text(fruit['name']),
                subtitle: Text(fruit['description']),
              ),
            );
          } else {
            if (isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container(); // Empty container at the end
            }
          }
        },
      ),
    );
  }
}
