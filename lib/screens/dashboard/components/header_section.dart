import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/constants.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('DashBoard', style: Theme.of(context).textTheme.headlineMedium),
        const Spacer(
          flex: 2,
        ),
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
          horizontal: defaultPadding, vertical: defaultPadding / 2.5),
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
    return SearchBar(
      textStyle: const MaterialStatePropertyAll(TextStyle(color: bgColorLight)),
      trailing: [
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
        )
      ],
      backgroundColor: const MaterialStatePropertyAll(secondaryColor),
      hintText: 'Search',
      hintStyle: const MaterialStatePropertyAll(TextStyle(color: bgColorLight)),
    );
  }
}
