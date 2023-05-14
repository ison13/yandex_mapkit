part of yandex_mapkit;

/// Extended information about company.
class ObjectCategory extends Equatable {
  final String name;
  final List<String> tags;

  ObjectCategory._(this.name, [this.tags = const []]);

  factory ObjectCategory._fromJson(Map<dynamic, dynamic> json) {
    return ObjectCategory._(
      json['name'],
      (json['tags'] as List<dynamic>).map((e) => e.toString()).toList(),
    );
  }

  @override
  List<Object> get props => [name, tags];

  @override
  bool get stringify => true;
}
