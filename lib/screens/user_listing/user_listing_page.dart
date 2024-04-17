import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saifulhamid_totalx_machine_task/screens/user_listing/refactor_user_listing_page.dart';

import '../../provider/user_listing_page.dart';

class UserListingPage extends StatelessWidget {
  const UserListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserListingProvider(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SearchInUserListingPage(),
                      const SizedBox(width: 10),
                      filterMethodInUserListingPage(context),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Users List",
                    style: TextStyle(fontSize: 18, letterSpacing: 1),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                          ),
                          tileColor: Colors.white,
                          leading: const CircleAvatar(
                            child: Icon(Icons.person),
                            radius: 25,
                          ),
                          title: Text("User ${index + 1}"),
                          subtitle: Text("Age ${index + 1}"),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: const FloatingActionButtonInUserListingPage(),
      ),
    );
  }


}


