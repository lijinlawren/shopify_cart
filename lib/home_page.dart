import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  var names = ['Pants','Shoes','T-shirt','Shirt'];
  var photos = ['https://fastly.picsum.photos/id/866/300/300.jpg?hmac=9qmLpcaT9TgKd6PD37aZJZ_7QvgrVFMcvI3JQKWVUIQ',
    'https://fastly.picsum.photos/id/866/300/300.jpg?hmac=9qmLpcaT9TgKd6PD37aZJZ_7QvgrVFMcvI3JQKWVUIQ',
    'https://fastly.picsum.photos/id/866/300/300.jpg?hmac=9qmLpcaT9TgKd6PD37aZJZ_7QvgrVFMcvI3JQKWVUIQ',
    'https://fastly.picsum.photos/id/866/300/300.jpg?hmac=9qmLpcaT9TgKd6PD37aZJZ_7QvgrVFMcvI3JQKWVUIQ'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopify'),),
      body: Container(
        child: Column(
          children: [
            Divider(),
            Container(
              width: 490,
              height: 45,
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Container(
                      width: 420,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.5)),
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Search'),
                          Row(
                            children: [
                              Icon(Icons.search),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.shopping_cart_outlined),
                ],
              ),
            ),
            Text('Today\'s Deals',style: TextStyle(fontSize: 20),),
            Expanded(
              child: ListView.builder(itemCount: names.length,itemBuilder: (BuildContext context, index){
                return Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 0.5)),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.network(photos[index]),
                      Text(names[index]),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
