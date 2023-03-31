import 'package:flutter/material.dart';
import 'package:flutter_home_work/data/data_source.dart';
import 'package:flutter_home_work/views/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  AllTasksScreen(this.fun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: DataSource.tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks[index],fun);
        });
  }
}
