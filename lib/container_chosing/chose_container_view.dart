import 'package:flutter/material.dart';
import 'package:practice/linearProgressIndicator/view_model.dart';
import 'package:provider/provider.dart';

class ChoseContainerView extends StatefulWidget {
  const ChoseContainerView({super.key});

  @override
  State<ChoseContainerView> createState() => _ChoseContainerViewState();
}

class _ChoseContainerViewState extends State<ChoseContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ViewModel>(
        builder: (context, vm, child) {
          return Center(
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                GestureDetector(
                  onTap: () {
                    vm.selectedContainer(1);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: vm.selectedIndex == 1
                          ? Border.all(width: 1.5, color: Colors.black)
                          : null,
                    ),
                    child: Text("data 1"),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    vm.selectedContainer(2);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: vm.selectedIndex == 2
                          ? Border.all(width: 1.5, color: Colors.black)
                          : null,
                    ),
                    child: Text("data 2"),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    vm.selectedContainer(3);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: vm.selectedIndex == 3
                          ? Border.all(width: 1.5, color: Colors.black)
                          : null,
                    ),
                    child: Text("data 3"),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    vm.selectedContainer(4);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: vm.selectedIndex == 4
                          ? Border.all(width: 1.5, color: Colors.black)
                          : null,
                    ),
                    child: Text("data 4"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    vm.selectedContainer(4);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: vm.selectedIndex == 4
                          ? Border.all(width: 1.5, color: Colors.black)
                          : null,
                    ),
                    child: Text("data 4"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
