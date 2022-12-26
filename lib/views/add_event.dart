import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/event_sheduar_controller.dart';


class AddEventView extends StatelessWidget {
  AddEventView({super.key});

  final _addEventController = TextEditingController();
  final _eventShedularController = Get.find<EventShedularController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Event")),
      body: Center(
          child: Column(
        children: [
          TextFormField(
            controller: _addEventController,
          ),
          ElevatedButton(
              onPressed: () {
                _eventShedularController.events.add(_addEventController.text);
              },
              child: const Text("Add"))
        ],
      )),
    );
  }
}
