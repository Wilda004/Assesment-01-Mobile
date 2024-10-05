import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          // Avatar dan tombol di atas
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Obx(() {
                      return CircleAvatar(
                        radius: 60,
                        backgroundColor: Color.fromARGB(189, 249, 247, 247),
                        backgroundImage: controller.imagePath.value.isNotEmpty
                            ? FileImage(controller.imageFile!) as ImageProvider
                            : null,
                        child: controller.imagePath.value.isEmpty
                            ? const Icon(
                                Icons.person,
                                size: 60,
                                color: Color.fromARGB(255, 12, 12, 12),
                              )
                            : null,
                      );
                    }),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        "Hello!",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: controller.pickImage,
                      child: const Text('Add Picture'),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: controller.removeImage,
                      child: const Text('Remove Picture'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Personal Info'),
                  onTap: () {
                    // Aksi ketika "Personal Info" ditekan
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.security),
                  title: const Text('Security Settings'),
                  onTap: () {
                    // Aksi ketika "Security Settings" ditekan
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Account Settings'),
                  onTap: () {
                    // Aksi ketika "Account Settings" ditekan
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Log Out'),
                  onTap: () {
                    // Aksi ketika "Log Out" ditekan
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
