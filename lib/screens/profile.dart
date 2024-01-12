import 'package:chamet_clone/components/profile_list_tile.dart';
import 'package:chamet_clone/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: purpleGradient,
                ),
                width: double.infinity,
                padding: const EdgeInsets.only(top: 80, bottom: 20),
                child: Stack(alignment: Alignment.center, children: [
                  Column(
                    // centered profile avatar
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1631913290783-490324506193?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "JohnDoe2135",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade400.withOpacity(0.3),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text(
                              "🇮🇳  India",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade400.withOpacity(0.3),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: const Text(
                              "🔡 English",
                              style: TextStyle(fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                              Text(
                                "Friends",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Positioned(
                      top: -10,
                      right: 10,
                      child: IconButton(
                          onPressed: () {
                            print("hi");
                          },
                          icon: const Icon(
                            Icons.view_list_rounded,
                            size: 28,
                            color: Colors.amber,
                          ))),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Column(
                  children: [
                    ProfileListTile(
                        icon: Icon(
                          Icons.message_rounded,
                          color: Colors.red.shade300,
                        ),
                        title: "Messages",
                        trailingData: const Badge(
                          label: Text("4"),
                        )),
                    ProfileListTile(
                        icon: Icon(
                          Icons.bar_chart_rounded,
                          color: Colors.amber.shade400,
                        ),
                        title: "My Level",
                        trailingData: Text("Lv0",
                            style: TextStyle(color: Colors.grey.shade500))),
                    ProfileListTile(
                        icon: Icon(
                          Icons.money_rounded,
                          color: Colors.amber.shade600,
                        ),
                        title: "My Balance",
                        trailingData: Text("200💎",
                            style: TextStyle(color: Colors.grey.shade500))),
                    ProfileListTile(
                        icon: Icon(
                          Icons.list_alt_rounded,
                          color: Colors.purple.shade300,
                        ),
                        title: "My Tasks",
                        trailingData: Text("50⭐",
                            style: TextStyle(color: Colors.grey.shade500))),
                    ProfileListTile(
                        icon: Icon(
                          Icons.backpack_rounded,
                          color: Colors.purple.shade300,
                        ),
                        title: "My Backpack",
                        trailingData: Text("0",
                            style: TextStyle(color: Colors.grey.shade500))),
                    ProfileListTile(
                        icon: Icon(
                          Icons.mail_rounded,
                          color: Colors.purple.shade300,
                        ),
                        title: "My Invitation",
                        trailingData: Text("More diamonds",
                            style: TextStyle(color: Colors.grey.shade500))),
                    ProfileListTile(
                      icon: Icon(
                        Icons.folder_rounded,
                        color: Colors.purple.shade300,
                      ),
                      title: "My Profile",
                    ),
                    ProfileListTile(
                        icon: Icon(
                          Icons.attach_money_rounded,
                          color: Colors.amber.shade600,
                        ),
                        title: "My Earning",
                        trailingData: Text("Withdraw",
                            style: TextStyle(color: Colors.grey.shade500))),
                    ProfileListTile(
                        icon: Icon(
                          Icons.settings,
                          color: Colors.purple.shade300,
                        ),
                        title: "Settings"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
