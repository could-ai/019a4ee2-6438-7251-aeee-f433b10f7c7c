import 'package:flutter/material.dart';
import '../models/video_model.dart';
import '../widgets/video_card.dart';
import 'video_player_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Mock data for demonstration
  final List<Video> videos = [
    Video(
      id: '1',
      title: 'Amazing Flutter Tutorial - Build Your First App',
      thumbnailUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/maxresdefault.jpg',
      channelName: 'Flutter Dev',
      channelAvatar: 'https://via.placeholder.com/40x40?text=F',
      viewCount: '1.2M',
      uploadTime: '2 days ago',
      duration: '15:30',
    ),
    Video(
      id: '2',
      title: 'YouTube Clone in Flutter - Complete Tutorial',
      thumbnailUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/maxresdefault.jpg',
      channelName: 'Code Master',
      channelAvatar: 'https://via.placeholder.com/40x40?text=C',
      viewCount: '856K',
      uploadTime: '1 week ago',
      duration: '22:45',
    ),
    Video(
      id: '3',
      title: 'State Management in Flutter - Provider vs Riverpod',
      thumbnailUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/maxresdefault.jpg',
      channelName: 'Tech Talks',
      channelAvatar: 'https://via.placeholder.com/40x40?text=T',
      viewCount: '432K',
      uploadTime: '3 days ago',
      duration: '18:20',
    ),
    Video(
      id: '4',
      title: 'Beautiful UI Design with Flutter Widgets',
      thumbnailUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/maxresdefault.jpg',
      channelName: 'Design Studio',
      channelAvatar: 'https://via.placeholder.com/40x40?text=D',
      viewCount: '678K',
      uploadTime: '5 days ago',
      duration: '12:15',
    ),
    Video(
      id: '5',
      title: 'Flutter Web Deployment - Step by Step Guide',
      thumbnailUrl: 'https://img.youtube.com/vi/dQw4w9WgXcQ/maxresdefault.jpg',
      channelName: 'Web Dev Pro',
      channelAvatar: 'https://via.placeholder.com/40x40?text=W',
      viewCount: '294K',
      uploadTime: '1 week ago',
      duration: '25:40',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Image.network(
          'https://www.gstatic.com/youtube/img/branding/youtubelogo/svg/youtubelogo.svg',
          height: 20,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, size: 20, color: Colors.white),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return VideoCard(
            video: video,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPlayerScreen(video: video),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}