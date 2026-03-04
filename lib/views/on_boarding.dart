import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/get_started.dart';



class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final pages = [
    _Model(
      title: 'Welcome To\nFashion',
      description:
          'Discover the latest trends and exclusive styles\nfrom our top designers',
      imagePath: 'on_boarding1.png',
    ),
    _Model(
      title: 'Explore & Shop',
      description:
          'Discover a wide range of fashion categories \nbrowse new arrivals and shop your favourites',
      imagePath: 'on_boarding2.png',
    ),
    _Model(
      title: 'Hi,Shop Now',
      description: '',
      imagePath: 'on_boarding3.png',
    ),
  ];


  int currentIndex = 0;
int previousIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        transitionBuilder: (child, animation) {
          final childIndex = (child.key as ValueKey<int>).value;
          final isNext = childIndex > previousIndex;
          //  previousIndexمعمولة علشان ايقونة الرجوع
          final offsetAnimation = Tween<Offset>(
            begin: isNext ? Offset(1, 0) : Offset(-1, 0),
            end: Offset(0, 0),
          ).animate(animation);

          return SlideTransition(position: offsetAnimation, child: child);
        },
        child: Container(
          key: ValueKey<int>(currentIndex),
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              AppImage(
                width: double.infinity,
                height: double.infinity,
                path: pages[currentIndex].imagePath,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(45.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (currentIndex != pages.length - 1)
                      OutlinedButton(
                        onPressed: () {
                          goTo(GetStartedView());
                        },
                        child: Text('Skip'),
                      ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (currentIndex < pages.length - 1) {
                          setState(() {
                            previousIndex = currentIndex;
                            currentIndex++;
                          });
                        } else {
                          goTo(GetStartedView());
                        }
                      },
                      child: CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Transform.scale(
                          scaleX: -1,
                          child: AppImage(
                            path: 'arrow_left.svg',
                            color: Colors.white,
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 120.h,
                left: 15.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pages[currentIndex].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      pages[currentIndex].description,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40.h,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(

                    pages.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: CircleAvatar(
                        radius: index == currentIndex ? 10.r : 6.0.r,
                        backgroundColor: index == currentIndex
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              if (currentIndex != 0)
                Positioned(
                  bottom: 40.h,
                  left: 20.w,
                  child: GestureDetector(
                    onTap: () {
                      if (currentIndex > 0) {
                        setState(() {
                          previousIndex = currentIndex;
                          currentIndex--;
                        });
                      }
                    },
                    child: Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xff4E6542), width: 2),
                      ),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.transparent,
                        child: AppImage(
                          path: 'arrow_right.svg',
                          color: Theme.of(context).primaryColor,
                          width: 20.w,
                          height: 20.h,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Model {
  final String title;
  final String description,imagePath;


  _Model({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}
