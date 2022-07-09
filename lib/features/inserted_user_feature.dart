class InsertedUserFeature {
  static String _insertedUserName = '';
  static final InsertedUserFeature _instance = InsertedUserFeature._internal();

  factory InsertedUserFeature() {
    return _instance;
  }

  InsertedUserFeature._internal();

  static void setUserName(String name) {
    _insertedUserName = name;
  }

  static String get getInsertedUserName => _insertedUserName;
}
