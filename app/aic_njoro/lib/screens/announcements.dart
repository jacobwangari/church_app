import 'package:aic_njoro/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Announcements extends StatelessWidget {
  const Announcements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, 'Announcements'),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              child: Flexible(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: IconButton(
                        onPressed: null,
                        iconSize: 10,
                        icon: Image.asset(
                          'assets/images/announcement.png',
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'ANNOUNCEMENTS',
                        style: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: _testimonialList(context)),
        ],
      ),
    );
  }

  Widget _testimonialList(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      shrinkWrap: false,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 132,
          // decoration: const BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.grey,
          //       blurRadius: 12,
          //       offset: Offset(2, 2),
          //     ),
          //     BoxShadow(
          //       color: Colors.grey,
          //       blurRadius: 12,
          //       offset: Offset(-2, -2),
          //     ),
          //   ],
          // ),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Stack(
            children: <Widget>[
              Material(
                type: MaterialType.card,
                elevation: 1,
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('assets/images/test_image.jpg')),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Announcement Header ${index + 1}',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Announcement Desription ${index + 1}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
