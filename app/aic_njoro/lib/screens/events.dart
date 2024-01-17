import 'package:aic_njoro/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:aic_njoro/models/event_model.dart';
import 'package:aic_njoro/widgets/event_calender.dart';
import 'package:aic_njoro/widgets/event_list.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, 'Events'),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Flexible(
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: IconButton(
                          onPressed: null,
                          iconSize: 30,
                          icon: Image.asset(
                            'assets/images/event.png',
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'EVENTS',
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            EventCalender(),
            Flexible(
              child: EventList([
                Event(
                  id: '0',
                  name: "First Sabbath",
                  venue: 'Church Auditorium',
                  isPassed: true,
                ),
                Event(
                  id: '1',
                  name: "Hymnody '19",
                  venue: 'Church Auditorium',
                  isPassed: false,
                ),
                Event(
                  id: '2',
                  name: "Prophecy Seminar",
                  venue: 'Church Auditorium',
                  isPassed: false,
                ),
                Event(
                  id: '3',
                  name: "Koncerto '20",
                  venue: 'Church Auditorium',
                  isPassed: false,
                ),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
