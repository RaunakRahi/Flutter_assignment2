import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/event_sheduar_controller.dart';
import 'add_event.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _eventController = Get.put(EventShedularController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: GetX<EventShedularController>(builder: (controller) {
        return ListView.builder(
            itemCount: controller.events.length,
            itemBuilder: ((context, index) {
              return ListTile(
                title: Text(controller.events[index]),
              );
            }));
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddEventView()));
        },
        tooltip: 'Add Event',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
