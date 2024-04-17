import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/user_listing_page.dart';

Container filterMethodInUserListingPage(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(10),
    ),
    child: IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              title: const Text(
                "Sort Users",
                style: TextStyle(fontSize: 15),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Consumer<UserListingProvider>(
                    builder: (context, sortProvider, _) =>
                        RadioListTile(
                          title: const Text("All"),
                          value: "All",
                          groupValue:
                          sortProvider.selectedOption,
                          onChanged: (value) {
                            sortProvider.setSelectedOption(
                                value.toString());
                            Navigator.pop(context);
                          },
                        ),
                  ),
                  Consumer<UserListingProvider>(
                    builder: (context, sortProvider, _) =>
                        RadioListTile(
                          title: const Text("Age: Elder"),
                          value: "Age: Elder",
                          groupValue:
                          sortProvider.selectedOption,
                          onChanged: (value) {
                            sortProvider.setSelectedOption(
                                value.toString());
                            Navigator.pop(context);
                          },
                        ),
                  ),
                  Consumer<UserListingProvider>(
                    builder: (context, sortProvider, _) =>
                        RadioListTile(
                          title: const Text("Age: Younger"),
                          value: "Age: Younger",
                          groupValue:
                          sortProvider.selectedOption,
                          onChanged: (value) {
                            sortProvider.setSelectedOption(
                                value.toString());
                            Navigator.pop(context);
                          },
                        ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
              ],
            );
          },
        );
      },
      icon: const Icon(
        Icons.filter_list_outlined,
        color: Colors.white,
        size: 30,
      ),
    ),
  );
}

class FloatingActionButtonInUserListingPage extends StatelessWidget {
  const FloatingActionButtonInUserListingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              title: const Text(
                "Add A New User",
                style: TextStyle(fontSize: 15),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 50,
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Name"),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text("Age"),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: const Icon(Icons.add, color: Colors.white),
      backgroundColor: Colors.black,
      shape: const CircleBorder(),
    );
  }
}

class SearchInUserListingPage extends StatelessWidget {
  const SearchInUserListingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(Icons.search),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search by name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}