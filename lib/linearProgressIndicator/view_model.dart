import 'package:flutter/material.dart';

class ViewModel extends ChangeNotifier {
  final PageController controller = PageController();
  int currentIndex = 0;
  int totalPages = 4;

  //changeindex
  void updateIndex(int value) {
    currentIndex = value;
    notifyListeners();
  }

  //change page
  void changePage() {
    if (currentIndex < totalPages - 1) {
      controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  //skip function
  void skipPages() {
    currentIndex = totalPages - 1;
    controller.jumpToPage(currentIndex);
    notifyListeners();
  }

  void backPage() {
    if (currentIndex > 0) {
      controller.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
