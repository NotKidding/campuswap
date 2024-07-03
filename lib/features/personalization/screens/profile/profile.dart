import 'package:campuswap/common/widgets/appbar/appbar.dart';
import 'package:campuswap/common/widgets/images/t_circular_image.dart';
import 'package:campuswap/common/widgets/text/section_heading.dart';
import 'package:campuswap/utils/constants/image_strings.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Profile'),),

      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column( 
            children: [
              //profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [ 
                    const TCircularImage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              //details
              const SizedBox(height: TSizes.spaceBtwItem / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItem,),
              
              //profile info
              
              TSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItem,),

          
              TProfileMenu(title: 'name', value: 'QWERTY', onPressed: (){},),
              TProfileMenu(title: 'username', value: 'qwerty', onPressed: (){},),

              const SizedBox(height: TSizes.spaceBtwItem,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItem,),

              // personel info

              TSectionHeading(title: 'Personel Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItem,),

                        
              TProfileMenu(title: 'user id', value: '54335',icon: Iconsax.copy, onPressed: (){},),
              TProfileMenu(title: 'email', value: 'qwerty', onPressed: (){},),
              TProfileMenu(title: 'phone number', value: '+91-456-7244804', onPressed: (){},),
              TProfileMenu(title: 'gender', value: 'Male', onPressed: (){},),
              TProfileMenu(title: 'date of birth', value: '10 Oct 1994', onPressed: (){},),

              Divider(),
              SizedBox(height: TSizes.spaceBtwItem,),


              Center(
                child: TextButton( 
                  onPressed: () {},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),),

                ),
              )


            ],
          ),
          ),
          

      ),
    );
  }
}
