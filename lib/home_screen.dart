import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'today_target.dart';
import 'user_details.dart';

class HomeScreeen extends StatelessWidget {
  final List<String> imageList = [
    'assets/images/wastage1.jpg',
    'assets/images/wastage2.jpg',
    'assets/images/wastage3.jpg',
  ];

  List<Map> userList = [
    {
      'image':
          'https://images.unsplash.com/photo-1633332755192-727a05c4013d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580',
      'id': '1002',
      'points': '60%',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1560250097-0b93528c311a?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387',
      'id': '1150',
      'points': '85%',
    },
    {
      'image':
          'https://bestprofilepix.com/wp-content/uploads/2014/01/boys-profile-pictures-5.jpg',
      'id': '1150',
      'points': '70%',
    },
    {
      'image':
          'https://www.whatsappimages.in/wp-content/uploads/2020/05/Boys-Profile-Images-20.jpg',
      'id': '1150',
      'points': '90%',
    },
    {
      'image':
          'https://i.pinimg.com/564x/38/20/2b/38202b63306e78378c74631fffb7f0ee.jpg',
      'id': '1150',
      'points': '75%',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reward System'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/greenbg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Top Reward Points user profiles',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: userList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 40,
                                child: CircleAvatar(
                                  radius: 78,
                                  backgroundImage:
                                      NetworkImage(userList[index]['image']),
                                ),
                              ),
                              Spacer(),
                              Text('ID : ${userList[index]['id']}'),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green),
                                child: Text(
                                  userList[index]['points'],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                      })
                  // CarouselSlider(
                  //   items: imageList
                  //       .map((e) => ClipRRect(
                  //             borderRadius: BorderRadius.circular(8),
                  //             child: Stack(
                  //               fit: StackFit.expand,
                  //               children: [
                  //                 Image.asset(
                  //                   e,
                  //                   width: 1050,
                  //                   height: 350,
                  //                   fit: BoxFit.cover,
                  //                 )
                  //               ],
                  //             ),
                  //           ))
                  //       .toList(),
                  //   options: CarouselOptions(
                  //       enlargeCenterPage: true,
                  //       enableInfiniteScroll: true,
                  //       autoPlay: true),
                  // ),
                  ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TodayTarget()),
                              );
                            },
                            icon: Image.asset('assets/images/wastage.png'),
                            color: Colors.purple,
                            iconSize: 150,
                            tooltip: 'Release Stress',
                          ),
                          Text(
                            'BIN STATUS DETAILS',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserDetails()),
                                );
                              },
                              icon: Image.asset('assets/images/user_green.png'),
                              color: Colors.purple,
                              iconSize: 150,
                              tooltip: 'Release Stress',
                            ),
                            Text(
                              'USER DETAILS',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
