import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/location_mang_controller.dart';
import '../models/location_mang_model.dart';
import '../widgets/location_manangement.dart';
import '../widgets/management_category_tabs.dart';
import '../widgets/share_location_dialoge.dart';

class LocationManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<LocationProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Location Management", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.orange,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: ManagementCategoryTabs(
                    onTabSelected: (tab) {
                      provider.setSelectedTab(tab);
                      if (tab == "Location") {
                        Navigator.pushNamed(context, "/manage_location");
                      } else if (tab == "Boxes") {
                        Navigator.pushNamed(context, "/manage_boxes");
                      }
                    },
                    selectedTab: '',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Show ShareLocationDialog when the box is clicked
                            showDialog(
                              context: context,
                              builder: (context) => ShareLocationDialog(),
                            );
                          },
                          child: StyledBoxCard(
                            box: provider.boxes[0],
                            onEdit: provider.editBox,
                            onDelete: provider.deleteBox,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Show ShareLocationDialog when the box is clicked
                            showDialog(
                              context: context,
                              builder: (context) => ShareLocationDialog(),
                            );
                          },
                          child: StyledBoxCard(
                            box: provider.boxes[1],
                            onEdit: provider.editBox,
                            onDelete: provider.deleteBox,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Show ShareLocationDialog when the box is clicked
                            showDialog(
                              context: context,
                              builder: (context) => ShareLocationDialog(),
                            );
                          },
                          child: StyledBoxCard(
                            box: provider.boxes[0],
                            onEdit: provider.editBox,
                            onDelete: provider.deleteBox,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Show ShareLocationDialog when the box is clicked
                            showDialog(
                              context: context,
                              builder: (context) => ShareLocationDialog(),
                            );
                          },
                          child: StyledBoxCard(
                            box: provider.boxes[1],
                            onEdit: provider.editBox,
                            onDelete: provider.deleteBox,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
