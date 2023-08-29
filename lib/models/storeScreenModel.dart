class storeScreenModel {
  final String imagePath;
  final String coinImage;
  final int score;
  final double price;

  storeScreenModel({
    required this.imagePath,
    required this.coinImage,
    required this.score,
    required this.price,
  });
}

final List<storeScreenModel> dataItem = [
  storeScreenModel(
    imagePath: 'assets/images/coin.png',
    coinImage: 'assets/svg_img/golden_coin.svg',
    score: 850,
    price: 98,
  ),
  storeScreenModel(
      imagePath: 'assets/images/bag.png',
      coinImage: 'assets/svg_img/golden_coin.svg',
      score: 900,
      price: 90),
  storeScreenModel(
    imagePath: 'assets/images/bag2.png',
    coinImage: 'assets/svg_img/golden_coin.svg',
    score: 450,
    price: 60,
  ),
  storeScreenModel(
    imagePath: 'assets/images/bag2.png',
    coinImage: 'assets/svg_img/golden_coin.svg',
    score: 400,
    price: 70,
  ),
];
