const String contactsTable = "cached_contact";

class CachedContactsFields {

  static final List<String> values = [
    /// Add all fields
    id, fullName, phone
  ];
  static const String id = "_id";
  static const String fullName = "full_name";
  static const String phone = "phone";
}

class CachedContact {
  final int? id;
  final String fullName;
  final String phone;

  CachedContact({
    this.id,
    required this.fullName,
    required this.phone,
  });

  //TODO 1 Create toJSon and fromJson, and copyWith









  @override
  String toString() => '''
        ID: $id 
        FULL NAME $fullName
        PHONE $phone
      ''';
}
