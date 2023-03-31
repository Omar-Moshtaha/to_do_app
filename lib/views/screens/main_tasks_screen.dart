import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_home_work/views/screens/all_tasks_screen.dart';

import 'complete_tasks.dart';
import 'incomplete_tasks.dart';

class MainTasksScreen extends StatefulWidget {
  @override
  State<MainTasksScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<MainTasksScreen> {
  PageController pageController = PageController();
List Categories=[
  'AllTasksScreen','CompleteTasksScreen','InCompleteTasksScreen'
];
  int pageIndex = 0;
  updateScreen() {
    log('set state from main screen has been excuted');
    setState(() {});
  }
updatePageIndex(int value){
    setState(() {
      pageIndex=value;
      pageController.jumpToPage(value);

    });
}
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    print(w);
    // TODO: implement build
    return w<400?
    Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: Drawer(
        child:
        Column(children:  [
          const UserAccountsDrawerHeader(currentAccountPicture:CircleAvatar(
            child: Text("omar"),
          ),accountName: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('omarMushtaha'),
          ), accountEmail: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text("omarMushtaha@gmail.com"),
          )),
ListView.builder(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),itemCount: Categories.length,itemBuilder: (context,index)=> GestureDetector(
  onTap: (){
    updatePageIndex(index);
  },
  child:   ListTile(
    title: Text("${Categories[index]}"),
    trailing: Icon(Icons.arrow_forward_ios),
  ),
))
        ],),
      ),

      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: PageView(
        controller: pageController,
        children: [
          AllTasksScreen(updateScreen),
          CompleteTasksScreen(updateScreen),
          InCompleteTasksScreen(updateScreen)
        ],
      ),
    ):Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: SingleChildScrollView(
        child: Row(
crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 400,
              child: Column(children:  [
                const UserAccountsDrawerHeader(currentAccountPicture:CircleAvatar(
                  child: Text("omar"),
                ),accountName: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('omarMushtaha'),
                ), accountEmail: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("omarMushtaha@gmail.com"),
                )),
                Container(
                  height: 400,
                  width: 200,
                  child: ListView.builder(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),itemCount: Categories.length,itemBuilder: (context,index)=> GestureDetector(
                    onTap: (){
                      updatePageIndex(index);
                    },
                    child:   ListTile(
                      title: Text("${Categories[index]}"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  )),
                )
              ],),
            ),

            Container(
              width: 250,
              height: h,
              child: PageView(
                controller: pageController,
                children: [
                  AllTasksScreen(updateScreen),
                  CompleteTasksScreen(updateScreen),
                  InCompleteTasksScreen(updateScreen)
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
