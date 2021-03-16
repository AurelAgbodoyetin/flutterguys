import 'package:meta/meta.dart';

class OnboardingItem {
  final String title;
  final String description;
  final String imgPath;
  final int id;

  OnboardingItem(
      {@required this.title,
      @required this.description,
      @required this.imgPath,
      @required this.id});
}

List<OnboardingItem> onboardingData = [
  OnboardingItem(
      title: "Title 1 Lorem ipsum",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue sodales risus, non varius nisi ornare et. Cras suscipit dapibus venenatis. Aliquam luctus posuere dui, nec porta risus porttitor maximus. Nunc diam lectus, porttitor nec varius at, sagittis id elit. Vestibulum dictum vestibulum orci, vitae ornare purus.",
      id: 0,
      imgPath: "assets/images/pngs/ob0.png"),
  OnboardingItem(
      title: "Title 2 Lorem ipsum",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue sodales risus, non varius nisi ornare et. Cras suscipit dapibus venenatis. Aliquam luctus posuere dui, nec porta risus porttitor maximus. Nunc diam lectus, porttitor nec varius at, sagittis id elit. Vestibulum dictum vestibulum orci, vitae ornare purus.",
      id: 0,
      imgPath: "assets/images/pngs/ob1.png"),
  OnboardingItem(
      title: "Title 3 Lorem ipsum",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue sodales risus, non varius nisi ornare et. Cras suscipit dapibus venenatis. Aliquam luctus posuere dui, nec porta risus porttitor maximus. Nunc diam lectus, porttitor nec varius at, sagittis id elit. Vestibulum dictum vestibulum orci, vitae ornare purus.",
      id: 0,
      imgPath: "assets/images/pngs/ob2.png"),
  OnboardingItem(
      title: "Title 4 Lorem ipsum",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue sodales risus, non varius nisi ornare et. Cras suscipit dapibus venenatis. Aliquam luctus posuere dui, nec porta risus porttitor maximus. Nunc diam lectus, porttitor nec varius at, sagittis id elit. Vestibulum dictum vestibulum orci, vitae ornare purus.",
      id: 0,
      imgPath: "assets/images/pngs/ob3.png"),
];
