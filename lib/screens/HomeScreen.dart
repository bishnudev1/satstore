import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.menu_open_outlined,
              size: 35,
              color: Colors.red.shade600,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deliver to',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Nilkonjo 2,Road 18,House 99 ^',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.left,
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.red.shade600,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.red.shade600,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 125,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage('images/Food.jpg'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Food items',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
                  ),
                  Container(
                    height: 125,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(width: .2, color: Colors.grey)),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage('images/BeautyHealth.png'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Beauty & Health',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )),
                  ),
                  Container(
                    height: 125,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(width: .2, color: Colors.grey)),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage('images/medicine.png'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Medicine',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 125,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey, width: .2)),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage('images/babyCare.png'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Baby Care',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                  ),
                  Container(
                    height: 125,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(width: .2, color: Colors.grey)),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: 60,
                          width: 60,
                          image: AssetImage('images/petCare.jpg'),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Pet Care',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )),
                  ),
                  Container(
                    height: 125,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: .2),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red.shade600,
                          ),
                          child: Center(
                              child: Text(
                            '3+',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Item',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 190,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: .2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: 75,
                          image: AssetImage('images/oil.webp'),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Daily Needs oil pack',
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Mongo, Vegetable, Coconate,Cornflower',
                          style: TextStyle(fontSize: 12),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '£50',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(onPressed: () {}, icon: Icon(Icons.add))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 190,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: .2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            height: 75,
                            image: AssetImage('images/veges.webp'),
                          ),
                          Text(
                            'Daily Needs Vegetables',
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Mongo, Vegetable, Coconate,Cornflower',
                            style: TextStyle(fontSize: 12),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '£50',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular item',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  TextButton(onPressed: () {}, child: Text('View All'))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .2,
                    child: Center(
                      child: Image(
                        height: 50,
                        image: AssetImage('images/yogurt.webp'),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aarong Dairy Sour Yogurt',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Chocklate fleavour',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text('500ml')
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '£550',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
