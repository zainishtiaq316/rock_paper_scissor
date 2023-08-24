class DataItem {
  final String imagePath;
  final String name;
  final int score;
  final double percentage;

  DataItem({
    required this.imagePath,
    required this.name,
    required this.score,
    required this.percentage,
  });
}

final List<DataItem> data = [
  DataItem(
    imagePath: 'assets/images/avatar_img.jpg',
    name: 'Tonny Newman',
    score: 15220,
    percentage: 91,
  ),
  DataItem(
    imagePath: 'assets/images/avatar_img.jpg',
    name: 'Herman Welch',
    score: 9855,
    percentage: 98,
  ),
  DataItem(
    imagePath: 'assets/images/avatar_img.jpg',
    name: 'Dollie Mann',
    score: 7433,
    percentage: 98,
  ),
  DataItem(
    imagePath: 'assets/images/avatar_img.jpg',
    name: 'Ian Burton',
    score: 5333,
    percentage: 98,
  ),
];
