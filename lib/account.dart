import 'package:flutter/material.dart';
import 'profile.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 80),
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF2E9F9),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Himawan Kurnia Eli Santo",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Universitas Teknologi Yogyakarta",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: const BoxDecoration(
              color: Color(0xFFFEF7FF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Column(
              children: [
                MenuListTile(
                  title: "Kelola Akun",
                  icon: Icons.person,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                  },
                ),
                const Divider(height: 1),
                MenuListTile(
                  title: "Notifikasi",
                  icon: Icons.notifications,
                  onTap: () {},
                ),
                const Divider(height: 1),
                MenuListTile(
                  title: "Privacy Policy",
                  icon: Icons.privacy_tip,
                  onTap: () {},
                ),
                const Divider(height: 1),
                MenuListTile(
                  title: "Terms of Service",
                  icon: Icons.description,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuListTile({
    required this.title,
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      leading: Icon(icon, color: Colors.grey[700]),
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }
}
