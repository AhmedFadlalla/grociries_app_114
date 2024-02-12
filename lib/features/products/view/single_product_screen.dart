import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocies_app/core/util/app_colors/app_colors.dart';
import 'package:grocies_app/core/util/widgets/custom_image_widget.dart';
import 'package:grocies_app/features/products/cubit/product_cubit.dart';

class SingleProductScreen extends StatelessWidget {
   const SingleProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
  create: (context) => ProductCubit(),
  child: Scaffold(
        body:BlocConsumer<ProductCubit, ProductState>(
  listener: (context, state) {

  },
  builder: (context, state) {
    var cubit=ProductCubit.get(context);
    return Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  child: ClipRRect(
                    borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)) ,
                    child: Swiper(itemCount: 3,
                    itemBuilder: (context,index)=>CustomImageWidget(url: "https://img.freepik.com/free-vector/watercolor-food-facebook-cover_23-2149175710.jpg"),
                      pagination: SwiperPagination(
                        alignment: Alignment.bottomCenter,
                        builder: DotSwiperPaginationBuilder(
                          activeColor: Colors.black,

                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),
                      Icon(Icons.upload,color: Colors.white,size: 30,),
                    ],
                  ),
                )
              ],
            ),
           const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Naturel Red Apple',style: TextStyle(
                        color: AppColors.kFontColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),),
                      Text('1kg, Price',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),)
                    ],
                  ),
                  Icon((Icons.favorite_border),size: 30,color: AppColors.kHintColor,)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.remove,size: 30,color: AppColors.kHintColor,),
                      SizedBox(width: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: AppColors.kHintColor,width: 2)
                        ),
                        child: Text(
                          '1',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(Icons.add,size: 30,color: AppColors.greenColor,)
                    ],
                  ),
                  Text('\$ 4.99',style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
            Divider(endIndent: 20,
            indent: 20,),
            InkWell(
              onTap: (){
                cubit.changeDetailsShow();
                // setState(() {
                //   isDetailShow=!isDetailShow;
                // });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Product Detail',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  cubit.isDetailsShow?Icon(Icons.keyboard_arrow_down,size: 40,):Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
            if(cubit.isDetailsShow)
            Text('Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
            style: TextStyle(
              color: AppColors.kHintColor,
              fontSize: 15
            ),
            )

          ],
        );
  },
),
      ),
),
    );
  }
}
