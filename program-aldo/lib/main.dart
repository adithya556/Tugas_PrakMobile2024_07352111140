import 'package:e_commerce/widget/BigCard.dart';
import 'package:e_commerce/widget/ProductCard.dart';
import 'package:e_commerce/widget/SectionHeader.dart';
import 'package:flutter/material.dart';
import 'widget/TopSeller.dart';
import 'widget/TopService.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            title: const Center(
              child: Text(
                'E-Commerce', // Judul aplikasi
                style: TextStyle(fontSize: 18),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            // Search bar dan kotak persegi di bawah navbar
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Here',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  // Kotak persegi
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(Icons.filter_alt, color: Colors.white),
                  ),
                ],
              ),
            ),

            // Hero Section dengan Gradient Background di bawah search bar
            Container(
              padding: const EdgeInsets.all(16.0),
              height: 280, // Tinggi Hero section
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.blueAccent],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Row(
                children: [
                  // Bagian kiri dengan teks
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Todays Deal',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '50% OFF',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Temukan produk terbaik dengan penawaran menarik. Potongan 50% hanya untuk anda sekarang. Jangan sampai kehabisan!',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(
                            height: 16), // Jarak antara teks dan tombol
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 32),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Buy It Now',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 200, // Lebar gambar
                    height: 200, // Tinggi gambar
                    child: Image.asset(
                      'assets/images/foto Ronaldo HD.jpg', // Ganti dengan path gambar PNG kamu
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),

            //Top Seller
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionHeader("Top Sellers"),
                  const SizedBox(height: 12),
                  Container(
                    height: 170,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        TopSeller(
                            'assets/images/foto Ronaldo HD.jpg', 'Toko 1', 4.5),
                        TopSeller(
                            'assets/images/foto Ronaldo HD.jpg', 'Toko 2', 4.7),
                        TopSeller(
                            'assets/images/foto Ronaldo HD.jpg', 'Toko 3', 4.5),
                        TopSeller(
                            'assets/images/foto Ronaldo HD.jpg', 'Toko 4', 4.8),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Top Services
            SectionHeader("Top Services"),

            TopService(
              'assets/images/foto Ronaldo HD.jpg',
              'assets/images/foto Ronaldo HD.jpg',
              4.5,
            ),
            TopService(
              'assets/images/foto Ronaldo HD.jpg',
              'assets/images/foto Ronaldo HD.jpg',
              4.8,
            ),
            TopService(
              'assets/images/foto Ronaldo HD.jpg',
              'assets/images/foto Ronaldo HD.jpg',
              4.7,
            ),

            SectionHeader("Best Bookings"),
            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.all(16.0),
              height: 250, 
              width: 370,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Bagian kiri dengan teks
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Deal of The Day',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Flat 60% OFF',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Temukan produk terbaik dengan penawaran menarik. Potongan 50% hanya untuk anda sekarang.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '16:34:12',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(
                            height: 16), // Jarak antara teks dan tombol
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 32),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Shop Now',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 150, // Lebar gambar
                    height: 150, // Tinggi gambar
                    child: Image.asset(
                      'assets/images/foto Ronaldo HD.jpg', // Ganti dengan path gambar PNG kamu
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            const BigCard(imagePath: 'assets/images/foto Ronaldo HD.jpg',),
            const SizedBox(height: 16),
            const BigCard(imagePath: 'assets/images/foto Ronaldo HD.jpg',),
            const SizedBox(height: 16),
            const BigCard(imagePath: 'assets/images/foto Ronaldo HD.jpg',),

            // Services List
            const SizedBox(height: 16),
            SectionHeader("Produk Terbaru"),
            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                shrinkWrap:
                    true, // Agar grid tidak scrollable, karena sudah ada SingleChildScrollView
                physics:
                    const NeverScrollableScrollPhysics(), // Agar hanya scroll di SingleChildScrollView
                crossAxisCount: 2, // 2 kolom
                crossAxisSpacing: 16.0, // Jarak antar kolom
                mainAxisSpacing: 16.0, // Jarak antar baris
                childAspectRatio: 0.75, // Rasio tinggi dan lebar card
                children: const [
                  ProductCard(
                    imagePath: 'assets/images/foto Ronaldo HD.jpg',
                    productName: 'Produk 1',
                    productPrice: 'Rp 150.000',
                  ),
                  ProductCard(
                    imagePath: 'assets/images/foto Ronaldo HD.jpg',
                    productName: 'Produk 2',
                    productPrice: 'Rp 120.000',
                  ),
                  ProductCard(
                    imagePath: 'assets/images/foto Ronaldo HD.jpg',
                    productName: 'Produk 4',
                    productPrice: 'Rp 200.000',
                  ),
                  ProductCard(
                    imagePath: 'assets/images/foto Ronaldo HD.jpg',
                    productName: 'Produk 3',
                    productPrice: 'Rp 180.000',
                  ),
                  ProductCard(
                    imagePath: 'assets/images/foto Ronaldo HD.jpg',
                    productName: 'Produk 4',
                    productPrice: 'Rp 200.000',
                  ),
                  ProductCard(
                    imagePath: 'assets/images/foto Ronaldo HD.jpg',
                    productName: 'Produk 5',
                    productPrice: 'Rp 120.000',
                  ),
                  ProductCard(
                    imagePath: 'assets/images/foto Ronaldo HD.jpg',
                    productName: 'Produk 5',
                    productPrice: 'Rp 50.000',
                  ),
                  ProductCard(
                    imagePath: 'assets/images/foto Ronaldo HD.jpg',
                    productName: 'Produk 6',
                    productPrice: 'Rp 280.000',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // Tetapkan indeks untuk tampilan default
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
