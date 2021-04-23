import 'package:flutter/material.dart';

import 'package:whatsapp/pages/callScreen.dart';
import 'package:whatsapp/pages/cameraScreen.dart';
import 'package:whatsapp/pages/statusScreen.dart';
import 'package:whatsapp/pages/messageScreen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new WhatsAppHomeState();
}

class WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = new TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text("واتساپ"),
        elevation: 5,
        bottom: new TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(text: "چت ها"),
              new Tab(text: "وضعیت"),
              new Tab(text: "تماس ها")
            ]),
        actions: [
          new Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(controller: tabController, children: <Widget>[
        new CameraScreen(),
        new MessageScreen(),
        new StatusScreen(),
        new CallScreen()
      ]),
    );
  }
}
