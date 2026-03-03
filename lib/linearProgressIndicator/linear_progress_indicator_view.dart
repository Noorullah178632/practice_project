import 'package:flutter/material.dart';
import 'package:practice/linearProgressIndicator/view_model.dart';
import 'package:provider/provider.dart';
import 'package:redacted/redacted.dart';

class LinearProgressIndicatorView extends StatefulWidget {
  const LinearProgressIndicatorView({super.key});

  @override
  State<LinearProgressIndicatorView> createState() =>
      _LinearProgressIndicatorViewState();
}

class _LinearProgressIndicatorViewState
    extends State<LinearProgressIndicatorView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel>(
      builder: (context, vm, child) {
        return Scaffold(
          appBar: AppBar(
            leading: vm.currentIndex > 0
                ? IconButton(
                    onPressed: () {
                      vm.backPage();
                    },
                    icon: Icon(Icons.arrow_back),
                  )
                : null,
            title: Text("Step ${vm.currentIndex} of ${vm.totalPages}"),
            centerTitle: vm.currentIndex == 0 ? false : true,
            actions: [
              GestureDetector(
                onTap: () {
                  vm.skipPages();
                },
                child: Text("skip", style: TextStyle(color: Colors.blue)),
              ),
              SizedBox(width: 5),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  children: List.generate(vm.totalPages, (index) {
                    return Expanded(
                      child: Container(
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          // Fill color if index <= current, otherwise background color
                          color: index <= vm.currentIndex
                              ? Colors.blue
                              : Colors.grey[300],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          body:
              PageView(
                controller: vm.controller,
                onPageChanged: (value) {
                  vm.updateIndex(value);
                },
                children: [
                  firstWidget(vm),
                  secondWidget(vm),
                  thirdWidget(vm),
                  fourWidget(vm),
                ],
              ).redacted(
                context: context,
                redact: vm.isLoading,
                configuration: RedactedConfiguration(
                  animationDuration: const Duration(
                    milliseconds: 800,
                  ), // Makes it shimmer
                  redactedColor: Colors.grey[300]!,
                ),
              ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              vm.setLoading();
            },
            child: Icon(Icons.refresh),
          ),
        );
      },
    );
  }

  Widget firstWidget(ViewModel vm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Page 1",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            vm.changePage();
          },
          child: Text("Continue"),
        ),
      ],
    );
  }

  Widget secondWidget(ViewModel vm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Page 2",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            vm.changePage();
          },
          child: Text("Continue"),
        ),
      ],
    );
  }

  Widget thirdWidget(ViewModel vm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Page 3",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            vm.changePage();
          },
          child: Text("Continue"),
        ),
      ],
    );
  }

  Widget fourWidget(ViewModel vm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Page 4",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            vm.changePage();
          },
          child: Text("Continue"),
        ),
      ],
    );
  }
}
