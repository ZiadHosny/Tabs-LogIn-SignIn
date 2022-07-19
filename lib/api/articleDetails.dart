// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:login_signup/api/articleModel.dart';

class ArticleDetails extends StatelessWidget {
  late Article article;
  ArticleDetails({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(article.title), backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ID : ${article.id}',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.network(article.picture),
              const SizedBox(
                height: 30,
              ),
              Text(
                article.content,
                style: TextStyle(fontSize: 17, color: Colors.grey[600]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
