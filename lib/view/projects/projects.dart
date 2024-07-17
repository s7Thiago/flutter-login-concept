import 'package:flutter/material.dart';

import '../../shared/projects_list.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              ...List.generate(ProjectsList.projects.length, (i) {
                ProjectsListItemModel item =
                    ProjectsList.projects.entries.elementAt(i).value;
                String key = ProjectsList.projects.keys.elementAt(i);

                return Container(
                  margin: const EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Hero(
                    tag: "btn$i",
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        splashColor: item.color,
                        onTap: () {
                          Navigator.of(context).pushNamed(key, arguments: {'index': i});
                        },
                        child: Center(
                          child: Text(
                            item.title,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
