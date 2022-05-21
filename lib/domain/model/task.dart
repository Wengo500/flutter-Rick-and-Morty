import 'package:meta/meta.dart';

class Task {
  final String? name;
  final String? description;
  final double? progress;
  final List? subtasks;
  Task({
    @required this.name,
    @required this.description,
    @required this.progress,
    @required this.subtasks,
  });
}