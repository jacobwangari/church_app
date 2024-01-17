import 'package:aic_njoro/models/event_model.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  final List<Event> eventList;

  EventList(this.eventList);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Colors.grey,
            offset: Offset(0, -2),
            spreadRadius: 2,
          )
        ],
      ),
      child: _eventList(),
    );
  }

  Widget _eventList() {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: eventList.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          key: Key(eventList[index].id),
          title: Text(eventList[index].name),
          subtitle: Text(eventList[index].venue!),
          trailing: IconButton(
            onPressed: () {},
            icon: eventList[index].isPassed
                ? const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  )
                : Icon(
                    Icons.notifications,
                    color: Theme.of(context).primaryColor,
                  ),
          ),
        );
      },
    );
  }
}
