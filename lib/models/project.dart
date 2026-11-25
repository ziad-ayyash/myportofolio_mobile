import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

/// Portfolio project synchronized with the Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Project {
  const Project({
    this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.thumbnail,
    required this.link,
    required this.maintenanceStatus,
    required this.developmentStatus
  });

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
    

  @JsonKey(includeToJson: false)
  final String? id;
  final String title;
  final String description;
  final String type;

  @JsonKey(defaultValue: '')
  final String thumbnail;

  @JsonKey(defaultValue: '')
  final String link;

  final String maintenanceStatus;
  final String developmentStatus;
  // Declare final String fields for description, techStack, projectUrl,
  // and projectImageUrl (annotated with @JsonKey(defaultValue: ''))

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
