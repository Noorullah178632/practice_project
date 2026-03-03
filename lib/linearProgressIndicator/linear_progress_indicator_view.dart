import 'package:flutter/material.dart';

class LinearProgressIndicatorView extends StatefulWidget {
  const LinearProgressIndicatorView({super.key});

  @override
  State<LinearProgressIndicatorView> createState() =>
      _LinearProgressIndicatorViewState();
}

class _LinearProgressIndicatorViewState
    extends State<LinearProgressIndicatorView> {
  PageController controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text("skip", style: TextStyle(color: Colors.blue)),
          SizedBox(width: 5),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.4),
          child: LinearProgressIndicator(
            value: 3,
            backgroundColor: Colors.blue,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          currentIndex = value;
        },
        children: [firstWidget(), secondWidget(), thirdWidget(), fourWidget()],
      ),
    );
  }

  Widget firstWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Page 1",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: () {}, child: Text("Continue")),
      ],
    );
  }

  Widget secondWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Page 2",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Continue")),
      ],
    );
  }

  Widget thirdWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Page 3",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Continue")),
      ],
    );
  }

  Widget fourWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Page 4",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Continue")),
      ],
    );
  }
}
