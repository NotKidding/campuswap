import 'package:campuswap/common/widgets/images/t_circular_image.dart';
import 'package:campuswap/utils/constants/colors.dart';
import 'package:campuswap/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, 
    required this.onPressed,
    //required Future? Function() onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(image: TImages.user,width: 50,height: 50,padding: 0,),
      title: Text('Nandakumar', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
      subtitle: Text('example@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: TColors.white,),),
      
    
    );
  }
}