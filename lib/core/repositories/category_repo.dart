class CategoryRepository {
  Future<List<String>> getCategories() async {
    try {
      await Future.delayed(Duration(microseconds: 30));
      List<String> names = ["Arshman", "Ahmed", "Kainat"];
      return names;
    } catch (e) {
      rethrow;
    }
  }
}
