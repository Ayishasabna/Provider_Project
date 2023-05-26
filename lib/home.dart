import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/list_provider.dart';
import 'package:provider_project/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numbersProviderModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Provider')),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: numbersProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                          numbersProviderModel.numbers[index].toString());
                    }),
              ),
              FloatingActionButton(
                onPressed: () {
                  numbersProviderModel.add();
                },
                child: const Icon(Icons.add),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Second()));
                  },
                  child: const Text('second'))
            ],
          ),
        );
      },
    );
  }
}
