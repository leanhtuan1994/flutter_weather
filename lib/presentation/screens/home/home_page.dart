import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/common/res/index.dart';
import 'package:flutter_base/di/injection.dart';
import 'package:flutter_base/presentation/screens/home/home_bloc.dart';
import 'package:flutter_base/presentation/screens/home/widgets/next_seven_days.dart';
import 'package:flutter_base/presentation/screens/home/widgets/precipitation_widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'widgets/air_quality_widget.dart';
import 'widgets/index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc _bloc = getIt.get<HomeBloc>();

  _buildImageView() {
    return StreamBuilder(
      initialData: _bloc.initImage,
      stream: _bloc.imageStream,
      builder: (context, snapshot) {
        return Container(
            height: 360,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: snapshot.data,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => SpinKitWanderingCubes(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    size: 25,
                  ),
                )));
      },
    );
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
          bottom: false,
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Gaps.vGap12,
              _buildImageView(),
              Gaps.vGap12,
              TemperatureWidget(),
              Gaps.vGap24,
              TemperatureHours(),
              Gaps.vGap24,
              DetailWidget(),
              Gaps.vGap24,
              NextSevenDays(),
              Gaps.vGap24,
              Precipitation(),
              Gaps.vGap24,
              AirQualityWidget()
            ],
          )),
    );
  }
}
