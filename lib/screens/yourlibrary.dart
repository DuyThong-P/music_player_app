import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class YourLibrary extends StatefulWidget {
  const YourLibrary({super.key});

  @override
  _YourLibraryState createState() => _YourLibraryState();
}

class _YourLibraryState extends State<YourLibrary> {
  final _audioQuery = OnAudioQuery();

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  void requestPermission() {
    Permission.storage.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Library"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: FutureBuilder<List<SongModel>>(
        future: _audioQuery.querySongs(
            sortType: null,
            orderType: OrderType.ASC_OR_SMALLER,
            uriType: UriType.EXTERNAL,
            ignoreCase: true),
        builder: (context, item) {
          if (item.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (item.data!.isEmpty) {
            return const Center(child: Text("No Songs found"));
          }
          return ListView.builder(
            itemCount: item.data?.length ?? 0, // Use the length of item.data
            itemBuilder: (context, index) {
              final musicItem = item.data![index]; // Get the current item

              return ListTile(
                leading: const Icon(Icons.music_note),
                title: Text(musicItem.displayNameWOExt), // Use the current item
                subtitle: Text(
                    musicItem.artist ?? "Unknown Artist"), // Handle null artist
                trailing: const Icon(Icons.more_horiz),
              );
            },
          );
// return ListView.builder(
//             itemBuilder: (context, index) => ListTile(
//               leading: const Icon(Icons.music_note),
//               title: Text(item.data![index].displayNameWOExt),
//               subtitle: const Text("${item.data![index].artist}"),
//               trailing: const Icon(Icons.more_horiz),
//             ),
//             itemCount: 100,
//           );
        },
      ),
    );
  }
}
