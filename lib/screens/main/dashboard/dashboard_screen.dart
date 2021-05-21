import 'package:admin/screens/main/Component/header.dart';
import 'package:admin/screens/main/Component/my_fiels.dart';
import 'package:admin/screens/main/Component/recent_files.dart';
import 'package:admin/screens/main/Component/storage_details.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import '../../../responsive.dart';
import '../../../responsive.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiels(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: defaultPadding,
                        ),
                      if (Responsive.isMobile(context)) StorageDetails()
                    ],
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
