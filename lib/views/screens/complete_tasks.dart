import 'package:flutter/material.dart';
import 'package:flutter_home_work/data/data_source.dart';
import 'package:flutter_home_work/views/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  Function fun;
  CompleteTasksScreen(this.fun);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),

        itemCount:
            DataSource.tasks.where((element) => element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks
              .where((element) => element.isComplete)
              .toList()[index],fun);
        });
  }
}
