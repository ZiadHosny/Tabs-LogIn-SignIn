// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:login_signup/api/api.dart';
import 'package:login_signup/api/articleDetails.dart';
import 'package:login_signup/api/articleModel.dart';

class Articles extends StatefulWidget {
  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  late Future<List<Article>> articles;

  @override
  void initState() {
    super.initState();
    articles = Mockapi().fetchArticles();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FutureBuilder(
            future: articles,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Article> articles = snapshot.data as List<Article>;

                return ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ArticleDetails(article: articles[index]),
                            ),
                          );
                        },
                        contentPadding: const EdgeInsets.all(20),
                        leading: Image.network(
                          articles[index].picture,
                        ),
                        title: Text(articles[index].title),
                      );
                    });
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
