import 'package:campuswap/common/widgets/appbar/appbar.dart';
import 'package:campuswap/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:campuswap/common/widgets/layouts/list_files/settings_menu_title.dart';
import 'package:campuswap/common/widgets/layouts/list_files/user_profile_tile.dart';
import 'package:campuswap/common/widgets/text/section_heading.dart';
import 'package:campuswap/features/personalization/screens/profile/profile.dart';
import 'package:campuswap/utils/constants/colors.dart';
import 'package:campuswap/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Column( 
          children: [ 
            //header
            TPrimaryHeaderContainer(
              child: Column( 
                children: [
                  //appbar
                  TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),

                  //user profile card
                  TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtwSection,),

                  ],
                )
              ),


            //body
            Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [ 
                //account settings
                const TSectionHeading(title: 'Account Settings', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItem,),
                
                const TSettingMenuTitle(icon: Iconsax.safe_home, title: 'My Address', subTitle: 'Set shopping delivery address'),
                const TSettingMenuTitle(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout'),
                const TSettingMenuTitle(icon: Iconsax.bag_tick, title: 'My Order', subTitle: 'In-progress and Completed Orders'),
                const TSettingMenuTitle(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registeredbank account'),
                const TSettingMenuTitle(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'list of all the discounted coupons'),
                const TSettingMenuTitle(icon: Iconsax.notification, title: 'Notification', subTitle: 'Set any kind of notification message'),
                const TSettingMenuTitle(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected account'),

                //app settings
                const SizedBox(height: TSizes.spaceBtwItem),
                const TSectionHeading(title: 'App Settings', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItem,),
                const TSettingMenuTitle(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'upload Data to your cloud firebase'),
                TSettingMenuTitle(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Get recommendation based on your location',trailing: Switch(value: true, onChanged: (value) {}),),
                TSettingMenuTitle(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Search result is safe for all ages',trailing: Switch(value: false, onChanged: (value) {}),),
                TSettingMenuTitle(icon: Iconsax.image, title: 'HD Image Quality', subTitle: 'Get image quality to be seen',trailing: Switch(value: false, onChanged: (value) {}),),
                
                //logout button
                const SizedBox(height: TSizes.spaceBtwSection),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){}, child: const Text('Logout'),),
                ),
                const SizedBox(height: TSizes.spaceBtwSection * 2.5,)
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
