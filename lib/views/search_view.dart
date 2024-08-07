import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});

  TextEditingController searchEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextFormField(
            controller: searchEditingController,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 32),
              labelText: 'Search',
              hintText: 'Enter City Name',
              border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
