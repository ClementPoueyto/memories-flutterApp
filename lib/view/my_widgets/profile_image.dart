import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:memories/view/my_material.dart';

class ProfileImage extends InkWell {
  ProfileImage({double size :20.0, @required String urlString, @required VoidCallback onPressed}):super(
    onTap : onPressed,
    child : CircleAvatar(
      radius: size,
      backgroundImage: (urlString!=null&&urlString!="")?CachedNetworkImageProvider(urlString)
          :CachedNetworkImageProvider("https://green-growth-org-uk.cdn.gofasterstripes.download/sites/default/files/default_images/anonymous-profile_0.png"),
      backgroundColor: white,
    )
  );
}