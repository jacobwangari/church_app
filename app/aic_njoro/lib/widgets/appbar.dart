import 'package:aic_njoro/screens/church_home.dart';
import 'package:aic_njoro/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget MyAppBar(BuildContext context, String title) {
  return AppBar(
    leading: IconButton(
        icon: const Icon(Icons.more_horiz),
        onPressed: () {
          Navigator.of(context)
              .push(CupertinoPageRoute(builder: (_) => ChurchHome()));
        }),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
    ),
    centerTitle: true,
    elevation: 0,
    title: Text(title),
    actions: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              CupertinoPageRoute(builder: (_) => const MainScreen()));
        },
      )
    ],
  );
}
