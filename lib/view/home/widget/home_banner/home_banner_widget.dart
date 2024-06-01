import 'package:flutter/material.dart';

import '../../../../config/color/colors.dart';
import '../../../../config/components/clip_behavior.dart';
import '../../../../utils/constant.dart';
import '../../../responsive.dart';
import 'widget/my_build_animated_text_widget.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: AspectRatio(
        aspectRatio: Responsive.isMobile(context)
            ? 2.5
            : Responsive.isExtraSmallMobile(context)
                ? 2
                : Responsive.isTablet(context)
                    ? 3.5
                    : 3,
        child: Material(
          elevation: 5.0,
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            decoration: (Responsive.isExtraSmallMobile(context) ||
                    Responsive.isMobile(context) ||
                    Responsive.isMobileLarge(context))
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1352&amp;q=80&quot",
                      ),
                      fit: BoxFit.cover,
                    ))
                : null,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      (Responsive.isExtraSmallMobile(context) ||
                              Responsive.isMobile(context) ||
                              Responsive.isMobileLarge(context))
                          ? Container(
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.black.withOpacity(0.5),
                            ))
                          : const SizedBox(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Discover my Amazing \nArt Space!",
                              overflow: TextOverflow.ellipsis,
                              maxLines: Responsive.isExtraSmallMobile(context)
                                  ? 1
                                  : 2,
                              style: Responsive.isDesktop(context)
                                  ? Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      )
                                  : Responsive.isTablet(context)
                                      ? Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          )
                                      : Responsive.isMobileLarge(context)
                                          ? Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)
                                          : Responsive.isMobile(context)
                                              ? Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white)
                                              : Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                            ),
                            if (Responsive.isMobileLarge(context))
                              const SizedBox(height: defaultPadding / 2),
                            if (!Responsive.isMobileLarge(context))
                              const SizedBox(height: defaultPadding / 2),
                            const MyBuildAnimatedText(),
                            const SizedBox(height: defaultPadding),
                            if (!Responsive.isExtraSmallMobile(context))
                              Align(
                                alignment: Responsive.isMobile(context)
                                    ? Alignment.center
                                    : Alignment.centerLeft,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          const BorderSide(
                                              color: AppColors.primaryColor)),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                        horizontal:
                                            Responsive.isDesktop(context)
                                                ? defaultPadding * 2
                                                : Responsive.isTablet(context)
                                                    ? defaultPadding
                                                    : Responsive.isMobileLarge(
                                                            context)
                                                        ? defaultPadding - 10
                                                        : 5,
                                        vertical: Responsive.isDesktop(context)
                                            ? defaultPadding
                                            : Responsive.isTablet(context)
                                                ? defaultPadding - 10
                                                : Responsive.isMobileLarge(
                                                        context)
                                                    ? defaultPadding - 5
                                                    : 3,
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) {
                                        if (states
                                            .contains(MaterialState.hovered)) {
                                          return AppColors.primaryColor;
                                        } else if (states
                                            .contains(MaterialState.pressed)) {
                                          return AppColors.primaryColor;
                                        }
                                        return Colors.white;
                                      }),
                                      foregroundColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) {
                                        if (states
                                            .contains(MaterialState.hovered)) {
                                          return Colors.white;
                                        } else if (states
                                            .contains(MaterialState.pressed)) {
                                          return Colors.white;
                                        }
                                        return AppColors.primaryColor;
                                      }),
                                      textStyle: MaterialStateProperty.all(
                                        Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      )),
                                  child: const Text(
                                    "EXPLORE NOW",
                                   
                                  ),
                                ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                if (Responsive.isDesktop(context) ||
                    Responsive.isTablet(context))
                  Expanded(
                    child: ClipPath(
                      clipper: ClipBehavior(),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1352&amp;q=80&quot",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
