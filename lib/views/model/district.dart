class District {
  late final String name;
  District({required this.name});
  @override
  String toString() {
    name.toLowerCase();
    return '${name.toLowerCase()}';
  }
}
