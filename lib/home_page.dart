import 'package:flutter/material.dart';
 
class HomePage extends StatefulWidget {
  final bool isDarkMode;
 
  const HomePage({super.key, this.isDarkMode = false});
 
  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;
  int _selectedCategory = 0;
 
  final List<String> _categories = ['News', 'Video', 'Artists', 'Podcasts'];
 
  @override
  Widget build(BuildContext context) {
    final bool dark = widget.isDarkMode;
    final Color bgColor = dark ? const Color(0xFF121212) : Colors.white;
    final Color textColor = dark ? Colors.white : Colors.black;
    final Color subTextColor = dark ? Colors.white60 : Colors.black54;
    final Color cardBg = dark ? const Color(0xFF1E1E1E) : const Color(0xFFF5F5F5);
 
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Icon(Icons.search, color: textColor, size: 26),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo.png'),
                      SizedBox(height: 10,),
                      SizedBox(height: 20,)
                    ],
                  ),
                  const Spacer(),
                  Icon(Icons.more_vert, color: textColor, size: 26),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFF1DB954),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Stack(
                        children: [
                          // Texto do banner
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'New Album',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Happier Than\nEver',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    height: 1.2,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  'Billie Eilish',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            bottom: 0,
                            width: 140,
                            child: Image.asset(
                              'assets/billie1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
 
                    const SizedBox(height: 20),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(_categories.length, (i) {
                          final bool selected = _selectedCategory == i;
                          return GestureDetector(
                            onTap: () =>
                                setState(() => _selectedCategory = i),
                            child: Container(
                              margin: const EdgeInsets.only(right: 24),
                              padding: const EdgeInsets.only(bottom: 6),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: selected
                                        ? const Color(0xFF1DB954)
                                        : Colors.transparent,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: Text(
                                _categories[i],
                                style: TextStyle(
                                  color: selected ? textColor : subTextColor,
                                  fontSize: 15,
                                  fontWeight: selected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
 
                    const SizedBox(height: 16),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildArtistCard(
                            imagePath: 'assets/billie2.png',
                            title: 'Bad Guy',
                            artist: 'Billie Eilish',
                            textColor: textColor,
                            subTextColor: subTextColor,
                          ),
                          const SizedBox(width: 16),
                          _buildArtistCard(
                            imagePath: 'assets/drake.png',
                            title: 'Scorpion',
                            artist: 'Drake',
                            textColor: textColor,
                            subTextColor: subTextColor,
                          ),
                          const SizedBox(width: 16),
                          _buildArtistCard(
                            imagePath: 'assets/billie3.png',
                            title: 'WH...',
                            artist: 'Billie',
                            textColor: textColor,
                            subTextColor: subTextColor,
                          ),
                        ],
                      ),
                    ),
 
                    const SizedBox(height: 24),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Playlist',
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See More',
                          style: TextStyle(
                            color: subTextColor,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
 
                    const SizedBox(height: 12),

                    _buildPlaylistItem(
                      title: 'As It Was',
                      artist: 'Harry Styles',
                      duration: '5:33',
                      cardBg: cardBg,
                      textColor: textColor,
                      subTextColor: subTextColor,
                    ),
 
                    const SizedBox(height: 10),

                    _buildPlaylistItem(
                      title: 'God Did',
                      artist: 'DJ Khaled',
                      duration: '3:43',
                      cardBg: cardBg,
                      textColor: textColor,
                      subTextColor: subTextColor,
                    ),
 
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                color: bgColor,
                border: Border(
                  top: BorderSide(
                    color: dark ? Colors.white12 : Colors.black12,
                    width: 1,
                  ),
                ),
              ),
              child: BottomNavigationBar(
                currentIndex: _selectedTab,
                onTap: (i) => setState(() => _selectedTab = i),
                backgroundColor: bgColor,
                selectedItemColor: const Color(0xFF1DB954),
                unselectedItemColor: subTextColor,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    label: 'Favorites',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
 
  Widget _buildArtistCard({
    required String imagePath,
    required String title,
    required String artist,
    required Color textColor,
    required Color subTextColor,
  }) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            artist,
            style: TextStyle(
              color: subTextColor,
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
 
  Widget _buildPlaylistItem({
    required String title,
    required String artist,
    required String duration,
    required Color cardBg,
    required Color textColor,
    required Color subTextColor,
  }) {
    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: cardBg,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.play_arrow, color: textColor, size: 22),
        ),
        const SizedBox(width: 14),
 
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                artist,
                style: TextStyle(color: subTextColor, fontSize: 13),
              ),
            ],
          ),
        ),
 
        Text(
          duration,
          style: TextStyle(color: subTextColor, fontSize: 13),
        ),
        const SizedBox(width: 14),
 
        Icon(Icons.favorite_border, color: subTextColor, size: 20),
      ],
    );
  }
}
 