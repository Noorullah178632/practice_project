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

  bool isLoading = false;
  void setLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  //get the index of the containe first
  int? _selectedIndex;
  int? get selectedIndex => _selectedIndex;
  void selectedContainer(int value) {
    _selectedIndex = value;
    notifyListeners();
  }
}
