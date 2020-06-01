import 'package:memories/controller/user_controller.dart';
import 'package:memories/models/user.dart';
import 'package:flutter/material.dart';
import 'package:memories/util/fire_helper.dart';
import 'package:memories/view/my_material.dart';
import 'package:memories/view/page/profile_page.dart';
class UserTile extends StatelessWidget{
  
  User user;
  UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext ctx){
            return UserController(user);
          }
        ));
      },
      child: Container(
        color: Colors.transparent,
        margin: EdgeInsets.all(2.5),
        child: Card(
          color: Colors.white,
          elevation: 5.0,
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ProfileImage(urlString: user.imageUrl, onPressed: null,),
                    PaddingWith(
                      right: 20,
                      left: 20,
                      widget:Text("${user.firstName} ${user.lastName}"),),
                  ],
                ),
                MyButton(color: me.following.contains(user.uid)? Colors.red:Colors.white,name :me.following.contains(user.uid)?"Se désabonner":"Suivre",function: (){FireHelper().addFollow(user);},),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}