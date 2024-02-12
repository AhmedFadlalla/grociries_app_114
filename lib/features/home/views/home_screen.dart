import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:grocies_app/core/util/app_colors/app_colors.dart';
import 'package:grocies_app/core/util/app_images/app_images.dart';
import 'package:grocies_app/core/util/widgets/custom_image_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.carrotWithOrangeColorImage, width: 50, height: 50,),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on),
                  Text('Dhaka, Banassre', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff4C4F4D)
                  ),)
                ],
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: AppColors.backgroundTextFiledColor,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    label: Text("Search Store"),
                    prefixIcon: Icon(Icons.search)
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Swiper(
                  autoplay: true,
                  duration: 600,
                  itemCount: 3,
                  itemBuilder: (context, index) =>CustomImageWidget(url: "https://img.freepik.com/free-vector/watercolor-food-facebook-cover_23-2149175710.jpg"),
                  pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                          color:Colors.grey,
                        activeColor: AppColors.greenColor
                      )
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text('Exclusive Offer',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24
                    ),),
                  ),
                  TextButton(onPressed: (){}, child: Text(
                    'see all',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greenColor
                  ),
                  ))
                ],
              ),
             SizedBox(
                 height:249,
                 child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>CustomCardItem(), separatorBuilder: (context,index)=>SizedBox(width: 5,), itemCount: 4))
          
          
            ],
          ),
        ),
      ),
    );
  }
}


class CustomCardItem extends StatelessWidget {
  const CustomCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 174,
      height: 248,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all( width: .5,color: Colors.grey )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.network('https://img.freepik.com/free-photo/many-different-berries-form-frame-white-background_485709-54.jpg')),
          Text("name",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
          Text('7pcs,price',style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff7C7C7C)
          ),),
          Row(
            children: [
              Expanded(child: Text('\$44',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
              ),)),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greenColor
                ),
                child: Center(
                  child: Icon(Icons.add,color: Colors.white,),
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}
