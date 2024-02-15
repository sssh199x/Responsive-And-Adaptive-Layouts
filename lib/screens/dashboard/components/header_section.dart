import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:responsiveness/constants.dart';
import 'package:responsiveness/controllers/menu_app_controller.dart';
import 'package:responsiveness/responsive.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              onPressed: context.read<MenuAppController>().controlMenu,
              icon: const Icon(
                Icons.menu,
                color: bgColorLight,
              )),
        if (!Responsive.isMobile(context))
          Text('DashBoard', style: Theme.of(context).textTheme.headlineMedium),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(
          child: SearchField(),
        ),
        const ProfileView()
      ],
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      margin: const EdgeInsets.only(left: defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(color: Colors.white10),
          borderRadius: BorderRadius.circular(10)),
      //
      child: Expanded(
        child: Row(
          children: [
            Image.asset(
              'assets/images/profile_pic.png',
              height: 38,
            ),
            if (!Responsive.isMobile(context))
              const Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Text('Scarlet Johnasson'),
              ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: bgColorLight,
            )
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: const TextStyle(color: bgColorLight),
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
    // SearchBar(
    //   textStyle: const MaterialStatePropertyAll(TextStyle(color: bgColorLight)),
    //   trailing: [
    //     InkWell(
    //       onTap: () {},
    //       child: Container(
    //         decoration: BoxDecoration(
    //             color: Colors.blue, borderRadius: BorderRadius.circular(10)),
    //         padding: const EdgeInsets.all(defaultPadding * 0.5),
    //         margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 4),
    //         child: SvgPicture.asset(
    //           'assets/icons/Search.svg',
    //           fit: BoxFit.contain,
    //         ),
    //       ),
    //     )
    //   ],
    //   backgroundColor: const MaterialStatePropertyAll(secondaryColor),
    //   hintText: 'Search',
    //   hintStyle: const MaterialStatePropertyAll(TextStyle(color: bgColorLight)),
    // );
  }
}
