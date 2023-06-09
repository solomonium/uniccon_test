import 'package:uniccon/component/custom_container.dart';
import 'package:uniccon/export.dart';
import 'package:uniccon/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Positioned(
            top: 54,
            left: 24,
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
                  children: [
                    const PrimaryText(
                        text: 'N0.00', color: AppColors.background),
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
              ],
            ),
          ),
          Center(
            // top: 200,
            // left: 24,
            child: CustomContainer(
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
          ),
          Positioned(
            top: 480,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PrimaryText(
                    text: 'Quick access',
                    color: AppColors.primaryText,
                    fontSize: 16,
                  ),
                  addVerticalSpace(12),
                  const CustomContainer(
                    height: 110,
                    width: 140,
                    borderRadius: 12,
                    color: AppColors.card,
                  ),
                  addVerticalSpace(28),
                  const CustomContainer(
                    height: 162,
                    width: 371,
                    borderRadius: 12,
                    color: AppColors.acctSetUp,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
