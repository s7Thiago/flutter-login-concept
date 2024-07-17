
import 'package:flutter/material.dart';
import 'package:login_concept/shared/routes.dart';

class ProjectsList {

  static final Map<String, ProjectsListItemModel> _projects = {
    Routes.login: ProjectsListItemModel(title: 'Tela de \nLogin', color: Colors.red),
    Routes.counter: ProjectsListItemModel(title: 'Exemplo de \nCounter', color: Colors.brown),
    Routes.randomImg: ProjectsListItemModel(title: 'Imagens \nRandômicas', color: Colors.amber)
  };

  static Map<String, ProjectsListItemModel> get projects => _projects;
}


class ProjectsListItemModel {
  final String title;
  final Color? color;

  ProjectsListItemModel({required this.title, this.color = Colors.white});

}