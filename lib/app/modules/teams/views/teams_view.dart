import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/teams_controller.dart';

class TeamsView extends GetView<TeamsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TeamsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TeamsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
