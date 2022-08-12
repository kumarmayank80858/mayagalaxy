class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image,required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'HELLO KOLKATA',
    image: 'assets/1.png',
    discription: "We deals with the second hand,"
    "original Mobile handset with proper invoice and with all accessories visit us for more exciting offers  "

  ),
  UnbordingContent(
    title: 'BEST APP DEALS',
    image: 'assets/2.png',
    discription: "Hello kolkata always gives priority to our customer for best products in best ever price. "

  ),
  UnbordingContent(
    title: 'DEALS THAT MAKES YOU AMAZE',
    image: 'assets/3.png',
    discription: "Install our appliction to get best discounts on every purchase.Install the App Now "
  ),
];
