import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offers_hub/config/locator.dart';
import 'package:offers_hub/config/routing.dart';
import 'package:offers_hub/features/share_reward/domain/domain_repo_impl.dart';
import 'package:offers_hub/features/share_reward/presentation/bloc/reward_bloc.dart';

import 'package:offers_hub/firebase_options.dart';
import 'package:offers_hub/utilis/constants.dart';
import 'package:offers_hub/utilis/scroll_behaviour.dart';
import 'package:offers_hub/utilis/snackbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await initializeDependencies();

  runApp(MyApp());
  // final listOfb = [
  //   'Skull candy',
  //   'Giva',
  //   'Uber',
  //   'Fastrack',
  //   'Zomato',
  //   'My11Circle',
  //   'Nike',
  //   'MakeMyTrip',
  //   'Skull candy',
  //   'Organic Harvest',
  // ];

  // final listOfIm = [
  //   'brands/skullcandy.png',
  //   'default/discount.png',
  //   'brands/uber.png',
  //   'brands/fastrack_sunglasses.jpg',
  //   'general/food.png',
  //   'general/games.png',
  //   'brands/nike.png',
  //   'default/discount.png',
  //   'brands/skullcandy.png',
  //   'default/discount.png',
  // ];

  // print(listOfIm.length);

  // for (var i = 0; i < 10; i++) {
  //   UploadRewardApi().uploadReward(RewardModel(
  //       brand: listOfb[i],
  //       amount: int.parse(generateRandomUserId()),
  //       uploader: 'company',
  //       category: listOfIm[i]));
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                RewardCubit(getIt<DomainApiRepoImpl>())..getRewards(),
          )
        ],
        child: MaterialApp.router(
          theme: ThemeData.dark(useMaterial3: true),
          routerConfig: appRoutes,
          scaffoldMessengerKey: AppSnackBar.messengerKey,
          scrollBehavior: ConstantScrollBehavior(),
        ));
  }
}
