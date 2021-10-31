class Item {
  final int number;
  final String displayName;
  final int score;

  Item({
    required this.number,
    required this.displayName,
    required this.score,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      number: json['number'],
      displayName: json['displayName'],
      score: json['score'],
    );
  }

  Item.fromJson2(Map<String, dynamic> json)
      : number=json['number'],
        displayName= json['displayName'],
        score= json['score'];

  @override
  String toString() {
    return '$number,$displayName';
  }
}