part of yandex_mapkit;

/// Extended information about company.
class SearchItemBusinessMetadata extends Equatable {
  /// Company id.
  final String oid;

  /// Company name.
  final String name;

  /// Short company name.
  final String? shortName;

  /// Working hours.
  final String? workingHours;

  /// List of links
  final List<String> links;

  /// List of phones
  final List<String> phones;

  /// Human-readable address.
  final SearchAddress address;

  /// Categories
  final List<ObjectCategory> categories;

  const SearchItemBusinessMetadata._({
    required this.oid,
    required this.name,
    required this.address,
    required this.links,
    required this.phones,
    required this.categories,
    this.shortName,
    this.workingHours,
  });

  factory SearchItemBusinessMetadata._fromJson(Map<dynamic, dynamic> json) {
    return SearchItemBusinessMetadata._(
      oid: json['oid'],
      name: json['name'],
      shortName: json['shortName'],
      workingHours: json['workingHours'],
      links: (json['links'] as List<dynamic>).map((e) => e.toString()).toList(),
      phones:
          (json['phones'] as List<dynamic>).map((e) => e.toString()).toList(),
      address: SearchAddress._fromJson(json['address']),
      categories: (json['categories'] as List<dynamic>)
          .map(
            (e) => ObjectCategory._fromJson(e as Map<dynamic, dynamic>),
          )
          .toList(),
    );
  }

  @override
  List<Object?> get props => [
        oid,
        name,
        shortName,
        workingHours,
        links,
        phones,
        address,
        categories,
      ];

  @override
  bool get stringify => true;
}
