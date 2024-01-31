import "package:flutter/material.dart";

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int? selectedIndex = 0;

  final List<String> imageList = ["https://images.pexels.com/photos/707046/pexels-photo-707046.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2","https://images.pexels.com/photos/909907/pexels-photo-909907.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2","https://images.pexels.com/photos/3311574/pexels-photo-3311574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2","https://images.pexels.com/photos/831475/pexels-photo-831475.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"];

  void showNextimage(){
    setState(() {
      selectedIndex = selectedIndex! + 1;
      if(selectedIndex == 4){
        selectedIndex = 0; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Display images",
        ),
      ),
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.network(
            imageList[selectedIndex!],
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: showNextimage, child: const Text("Next",)
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){setState(() {
            selectedIndex = 0;
          });}, child: const Text("Reset",)),
        ],
      ),
     ), 
  );
  }
}
