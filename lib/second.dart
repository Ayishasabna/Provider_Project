import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/list_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key,});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numberlist, child) {
        return Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Provider')),
            ),
            body: Column(
              children: [
                Container(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: numberlist.numbers.length,
                      itemBuilder: (context, index) {
                        return Text(numberlist.numbers[index].toString());
                      }),
                ),
                FloatingActionButton(
                  onPressed: () {
                    numberlist.add();
                  },
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(onPressed: () {}, child: const Text('second'))
              ],
            ));
      },
    );
  }
}
