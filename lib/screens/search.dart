import 'package:flutter/material.dart';

import 'package:music_player_app/models/post.dart';
import 'package:music_player_app/services/post_operation.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<Post> _posts = <Post>[];
  List<Post> _postsDisplay = <Post>[];

  @override
  void initState() {
    // TODO: implement initState
    fetchPost().then((value) {
      setState(() {
        _posts.addAll(value);
        _postsDisplay = _posts;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Music Here')),
      body: ListView.builder(
        itemCount: _postsDisplay.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return index == 0 ? searchBar() : _listItem(index - 1);
        },
      ),
    );
  }

  searchBar() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        decoration: const InputDecoration(hintText: 'Search Here...'),
        onChanged: (text) {
          text = text.toLowerCase();
          setState(() {
            _postsDisplay = _posts.where((post) {
              var posttile = post.title!.toLowerCase();
              return posttile.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  _listItem(index) {
    return Card(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 32, bottom: 32, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _postsDisplay[index].id?.toString() ?? 'No ID',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              _postsDisplay[index].title ?? 'No Title',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
