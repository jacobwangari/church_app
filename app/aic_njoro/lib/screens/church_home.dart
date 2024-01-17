import 'package:flutter/material.dart';
import 'package:aic_njoro/widgets/appbar.dart';

class ChurchHome extends StatelessWidget {
  final menuList = <Map<String, dynamic>>[
    {
      'name': 'EVENTS',
      'image': 'assets/images/event.png',
      'selected': false,
      'pushTo': 'EVENTS',
    },
      {
      'name': 'ANNOUNCEMENTS',
      'image': 'assets/images/announcement.png',
      'selected': false,
      'pushTo': 'ANNOUNCEMENTS',
    },
    {
      'name': 'SERMONS',
      'image': 'assets/images/sermons.png',
      'selected': false,
      'pushTo': 'SERMONS',
    },
    {
      'name': 'GIVE',
      'image': 'assets/images/give.png',
      'selected': false,
      'pushTo': 'GIVE',
    },
    {
      'name': 'TESTIMONIALS',
      'image': 'assets/images/testimonials.png',
      'selected': false,
      'pushTo': 'TESTIMONIALS',
    },
    {
      'name': 'CONNECT',
      'image': 'assets/images/connect.png',
      'selected': true,
      'pushTo': 'CONNECT',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, 'AIC NJORO'),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: buildMenu(context),
      ),
    );
  }



Widget buildMenu(BuildContext context) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: menuList.length,
    scrollDirection: Axis.vertical,
    itemBuilder: (BuildContext cxt, int index) {
      return AspectRatio(
        aspectRatio: 1.0, // Adjust this ratio as needed
        child: Card(
          elevation: 1,
          child: InkWell(
            splashColor: Colors.grey[350],
            onTap: () {
              Navigator.pushNamed(context, menuList[index]['pushTo']);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 50, // Adjust the size as needed
                  height: 50,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(menuList[index]['pushTo']);
                    },
                    iconSize: 50,
                    icon: Image.asset(
                      menuList[index]['image'],
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Text(menuList[index]['name'])
              ],
            ),
          ),
        ),
      );
    },
  );
}
}
