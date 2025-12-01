import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('انتخاب نوع کاربری'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'لطفا نوع حساب کاربری خود را مشخص کنید:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            _buildRoleButton(
              context,
              icon: Icons.drive_eta,
              label: 'راننده هستم',
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            const SizedBox(height: 16),
            _buildRoleButton(
              context,
              icon: Icons.inventory_2,
              label: 'صاحب کالا هستم',
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
            const SizedBox(height: 16),
            _buildRoleButton(
              context,
              icon: Icons.business,
              label: 'شرکت حمل و نقل هستم',
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoleButton(BuildContext context,
      {required IconData icon,
      required String label,
      required VoidCallback onPressed}) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(label, style: const TextStyle(fontSize: 16)),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
