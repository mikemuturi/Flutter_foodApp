import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({Key? key});

  void openLocationSearchBox(BuildContext context){
    showDialog(context: context,
     builder: (context) => AlertDialog(
      title: const Text("Your Location"),
      content: const TextField(
        decoration: InputDecoration(hintText: "Search address..."),
        ),
        actions: [
          MaterialButton(onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
          ),
          MaterialButton(onPressed: () => Navigator.pop(context),
          child: const Text("Save"),
          )
        ],
     ),
     );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver now", style: TextStyle(
            color: Colors.grey.shade500,
            fontWeight: FontWeight.bold
          ),),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // Address
                Text("6901 Malili",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Dropdown menu
                const Icon(
                  Icons.keyboard_arrow_down_rounded
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
