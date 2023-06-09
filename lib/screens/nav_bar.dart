import 'package:uniccon/export.dart';
import 'package:uniccon/utils/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List pages = const [
    HomePage(),
    Savings(),
    Loans(),
    Tribe(),
    Profile(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 14.0,
        unselectedFontSize: 14,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.secondaryText,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w300),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 4,
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Padding(
                padding: const EdgeInsets.only(top: 14.0, bottom: 7),
                child: SizedBox(
                    width: 28,
                    height: 28,
                    child: Image.asset(
                      'assets/images/Home.png',
                      width: 28,
                      height: 28,
                      fit: BoxFit.contain,
                    )),
              )),
          BottomNavigationBarItem(
            label: "Savings",
            icon: Padding(
                padding: const EdgeInsets.only(top: 14.0, bottom: 7),
                child: SizedBox(
                  width: 28,
                  height: 28,
                  child: Image.asset(
                    'assets/images/Money_bag.png',
                    fit: BoxFit.contain,
                  ),
                )),
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 14.0, bottom: 7),
              child: SizedBox(
                width: 28,
                height: 28,
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColors.primary,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'assets/images/Money_bag.png',
                    width: 28,
                    height: 28,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Loans",
            icon: Padding(
              padding: const EdgeInsets.only(top: 14.0, bottom: 7),
              child: SizedBox(
                  width: 28,
                  height: 28,
                  child: Image.asset(
                    'assets/images/Charity_coins.png',
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                  )),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 14.0, bottom: 7),
              child: SizedBox(
                width: 28,
                height: 28,
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColors.primary,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'assets/images/Charity_coins.png',
                    width: 28,
                    height: 28,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            label: "Tribe",
            icon: Padding(
              padding: const EdgeInsets.only(top: 14.0, bottom: 7),
              child: SizedBox(
                  width: 28,
                  height: 28,
                  child: Image.asset(
                    'assets/images/tribe.png',
                    fit: BoxFit.contain,
                  )),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 14.0, bottom: 7),
              child: SizedBox(
                width: 28,
                height: 28,
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColors.primary,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'assets/images/tribe.png',
                    width: 28,
                    height: 28,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Padding(
              padding: const EdgeInsets.only(top: 14.0, bottom: 7),
              child: SizedBox(
                  width: 28,
                  height: 28,
                  child: Image.asset(
                    'assets/images/Profile.png',
                    fit: BoxFit.contain,
                  )),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(top: 14.0, bottom: 7),
              child: SizedBox(
                width: 28,
                height: 28,
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColors.primary,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'assets/images/Profile.png',
                    width: 28,
                    height: 28,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
