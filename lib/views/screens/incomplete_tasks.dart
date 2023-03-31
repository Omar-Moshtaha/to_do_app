import 'package:flutter/material.dart';
import 'package:flutter_home_work/data/data_source.dart';
import 'package:flutter_home_work/views/widgets/task_widget.dart';

class InCompleteTasksScreen extends StatelessWidget {
  Function function;
  InCompleteTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount:
            DataSource.tasks.where((element) => !element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks
              .where((element) => !element.isComplete)
              .toList()[index],
              function);
        });
  }
}
