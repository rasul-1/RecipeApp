import 'package:flutter/material.dart';

class Silverbar extends StatefulWidget {
  Silverbar({super.key});

  @override
  State<Silverbar> createState() => _SilverbarState();
}

class _SilverbarState extends State<Silverbar> {
  bool _stretch = true;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            stretch: _stretch,
            onStretchTrigger: () async {},
            stretchTriggerOffset: 300,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SilverBar"),
              background: SafeArea(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/palov.jpg'),
                          ),
                          shape: BoxShape.circle),
                    ),
                    Column(
                      children: [
                        Text(
                          'Family name ,Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text('Postion')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black,
                height: 100,
                child: Text(
                  '$index',
                  textScaler: const TextScaler.linear(5),
                ),
              );
            }, childCount: 20),
          )
        ],
      ),
    );
  }
}
