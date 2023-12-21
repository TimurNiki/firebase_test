import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_test_app/core/utility/exceptions/custom_exception.dart';
import 'package:flutter/material.dart';
import 'model/news_model.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const TestListView(),
    );
  }
}

class TestListView extends StatelessWidget {
  const TestListView({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference news = FirebaseFirestore.instance.collection('news');

    final response = news.withConverter(
      fromFirestore: (snapshot, options) {
        return const News().fromFirebase(snapshot);
      },
      toFirestore: (value, options) {
        if (value == null) throw FirebaseCustomException("$value not null");
        return value.toJson();
      },
    ).get();
    return FutureBuilder(
      future: response,
      builder:
          (BuildContext context, AsyncSnapshot<QuerySnapshot<News?>> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Placeholder();
          case ConnectionState.waiting:
            return const CircularProgressIndicator();

          case ConnectionState.active:
            return const LinearProgressIndicator();
          case ConnectionState.done:
            if (snapshot.hasData) {
              final values = snapshot.data!.docs.map((e) => e.data()).toList();
              return ListView.builder(
                itemCount: values.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(
                          values[index]?.backgroundImage ?? '',
                        ),
                        Text(
                          values[index]?.title ?? '',
                        )
                      ],
                    ),
                  );
                },
              );
            } else {
              const SizedBox();
            }
        }
        return const Placeholder();
      },
    );
  }
}
