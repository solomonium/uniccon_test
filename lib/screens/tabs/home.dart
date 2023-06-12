import 'package:uniccon/component/custom_container.dart';
import 'package:uniccon/export.dart';
import 'package:uniccon/utils/strings.dart';
import 'package:uniccon/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Scaffold(
            body: Stack(
              children: [
                Container(
                  height: 342,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(24),
                        bottomLeft: Radius.circular(24)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 24,
            left: 23,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CustomContainer(
                      height: 42,
                      width: 42,
                      borderRadius: 50,
                      color: AppColors.background,
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          'assets/images/Profile.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    addHorizontalSpace(10),
                    const SecondaryText(
                      text: 'Hi, Kikelomo',
                      fontSize: 14,
                      color: AppColors.background,
                    ),
                    addHorizontalSpace(185),
                    CustomContainer(
                      height: 42,
                      width: 42,
                      borderRadius: 50,
                      color: AppColors.border.withOpacity(0.2),
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          'assets/images/Notification.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    )
                  ],
                ),
                addVerticalSpace(20),
                const SecondaryText(
                  text: 'Main Account Balance',
                  fontSize: 14,
                  color: AppColors.background,
                ),
                addVerticalSpace(13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const PrimaryText(
                        text: 'N0.00',
                        fontSize: 32,
                        color: AppColors.background),
                    addHorizontalSpace(5),
                    const Icon(Icons.remove_red_eye,
                        color: AppColors.background)
                  ],
                ),
                addVerticalSpace(20),
                const SecondaryText(
                    text: 'Account number: 0005400225',
                    color: AppColors.background),
                addVerticalSpace(20),
                addVerticalSpace(20),
                CustomContainer(
                  height: 175,
                  width: 340,
                  color: AppColors.card,
                  borderRadius: 12,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 18),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const CustomContainer(
                                  height: 42,
                                  width: 42,
                                  borderRadius: 50,
                                  color: AppColors.addMoney,
                                  child: SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: Icon(
                                        Icons.add,
                                        color: AppColors.background,
                                      )),
                                ),
                                addHorizontalSpace(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    PrimaryText(
                                      text: 'Add money',
                                      fontSize: 16,
                                    ),
                                    SecondaryText(
                                      text: 'Top up your wallet balance',
                                      fontSize: 14,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: AppColors.border,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 18),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const CustomContainer(
                                  height: 42,
                                  width: 42,
                                  borderRadius: 50,
                                  color: AppColors.withdraw,
                                  child: SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: Icon(
                                        Icons.arrow_outward,
                                        color: AppColors.background,
                                      )),
                                ),
                                addHorizontalSpace(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    PrimaryText(
                                      text: 'Withdraw',
                                      fontSize: 16,
                                    ),
                                    SecondaryText(
                                      text: 'Move money out of wallet',
                                      fontSize: 14,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                addVerticalSpace(28),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PrimaryText(
                      text: 'Quick access',
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                    addVerticalSpace(12),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          quickAccess.length,
                          (index) => Row(
                            children: [
                              CustomContainer(
                                height: 110,
                                width: 140,
                                borderRadius: 12,
                                color: AppColors.card,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 35,
                                        width: 35,
                                        child: Image.asset(cardIcons[index])),
                                    SizedBox(
                                      height: 40,
                                      width: 112,
                                      child: SecondaryText(
                                        text: quickAccess[index],
                                        fontSize: 15,
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              addHorizontalSpace(18)
                            ],
                          ),
                        ),
                      ),
                    ),
                    addVerticalSpace(28),
                    CustomContainer(
                      height: 162,
                      width: 371,
                      borderRadius: 12,
                      color: AppColors.acctSetUp,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 23,
                          left: 24,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SecondaryText(
                                  text: 'Welcome to Akiba Tribe',
                                  color: AppColors.welcomeText,
                                ),
                                addVerticalSpace(9),
                                const SizedBox(
                                  height: 60,
                                  width: 177,
                                  child: SecondaryText(
                                    text: 'Complete account set up',
                                    color: AppColors.background,
                                    fontSize: 24,
                                  ),
                                ),
                                addVerticalSpace(17),
                                Row(
                                  children: [
                                    const CustomContainer(
                                      height: 12,
                                      width: 107,
                                      borderRadius: 50,
                                      color: AppColors.welcomeText,
                                    ),
                                    addHorizontalSpace(12),
                                    const SecondaryText(
                                      text: '1/5',
                                      color: AppColors.background,
                                    )
                                  ],
                                )
                              ],
                            ),
                            addHorizontalSpace(44),
                            SizedBox(
                                height: 96,
                                width: 96,
                                child:
                                    Image.asset('assets/icons/completed.png'))
                          ],
                        ),
                      ),
                    ),
                    addVerticalSpace(20)
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
