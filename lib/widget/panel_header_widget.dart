import 'package:arni_18111025_uts/model/user.dart';
import 'package:arni_18111025_uts/widget/follow_button_widget.dart';
import 'package:flutter/material.dart';

class PanelHeaderWidget extends StatelessWidget {
  final User user;
  final VoidCallback onClickedFollowing;

  const PanelHeaderWidget({
    @required this.user,
    @required this.onClickedFollowing,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(child: buildUser()),
          FollowButtonWidget(
            isFollowing: user.isFollowing,
            onClicked: onClickedFollowing,
          ),
        ],
      );

  Widget buildUser() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(user.location),
        ],
      );
}
