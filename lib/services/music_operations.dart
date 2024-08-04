import 'package:music_player_app/models/music.dart';

class MusicOperations {
  MusicOperations._();
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Baby',
          'https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Babycoverart.jpg/220px-Babycoverart.jpg',
          'Justin Bieber',
          'https://www.nhaccuatui.com/playlist/hit-viet-quoc-dan-va.fb7YDyfASno0.html?st=2'),
      Music(
          'Attention',
          'https://i1.sndcdn.com/artworks-000219662523-o9o4r2-t500x500.jpg',
          'Charlie Puth',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview126/v4/b5/32/d4/b532d45b-0e4d-6bf3-d7b5-e02007877318/mzaf_10109990520611630125.plus.aac.p.m4a'),
      Music(
          'Band4Band',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgUv-mioZMB6uy7u0HBptaka0Q-8xpnUAc8A&s',
          'Central Cee',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview126/v4/b5/32/d4/b532d45b-0e4d-6bf3-d7b5-e02007877318/mzaf_10109990520611630125.plus.aac.p.m4a'),
      Music(
          'Yêu 5',
          'https://photo-resize-zmp3.zadn.vn/w600_r1x1_jpeg/covers/b/5/b5aa78aa102467e5648160a4ac93df8e_1486467660.jpg',
          'Rhymastic',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/15/8b/68/158b68e9-5733-35d0-1e21-ca260920dea9/mzaf_13909644994865297727.plus.aac.p.m4a')
    ];
  }
}
