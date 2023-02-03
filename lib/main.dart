// ignore_for_file: unrelated_type_equality_checks

import 'package:books_list/widgets/book.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "RobotoMono"),
      debugShowCheckedModeBanner: false,
      home:BookList(),
    );
  }
}

class BookList extends StatefulWidget {
  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  List<Map<String, String>> book_list = [
    {
      "id": "user1",
      "name": "Alibaba:Jek Ma",
      "price": "59000 so'm",
      "image":
          "https://assets.asaxiy.uz/product/items/desktop/7cce53cf90577442771720a370c3c7232021071818210735914vv49nu4B55.jpg.webp",
    },
    {
      "id": "user2",
      "name": "Stiv Jobs",
      "price": "69000 so'm",
      "image":
          "https://assets.asaxiy.uz/product/items/desktop/62afaf4f661699d406da07f417694ab02020090113252448908XTd2lc78nx.jpg.webp",
    },
    {
      "id": "user3",
      "name": "Ilon Musk",
      "price": "75000 so'm",
      "image":
          "https://assets.asaxiy.uz/product/items/desktop/e924517087669cf201ea91bd737a4ff42022030118263010610zT1oA2Ndx4.jpg.webp",
    },
    {
      "id": "user4",
      "name": "Genri Ford",
      "price": "59000 so'm",
      "image":
          "https://assets.asaxiy.uz/product/items/desktop/c3306e32d126c82cce78cf8ce1ebd1522021031210383072988RYlu2Xer92.jpg.webp",
    }
  ];

  void deleteBook(String book) {
    setState(() {
      book_list.removeWhere((element) {
        if (book == element["id"])
          return true;
        else
          return false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Books list",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Expanded(
              child: ListView(
                itemExtent: 75,
                children: book_list.map((book) {
                  return Books(
                    id: book["id"]!,
                    name: book["name"]!,
                    price: book["price"]!,
                    image: book["image"]!,
                    deleteBook: deleteBook,
                  );
                }).toList(),
              ),
            ),
            
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      child: Icon(Icons.search),),
    );
  }
}
