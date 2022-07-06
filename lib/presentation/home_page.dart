import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../animation/routes/slide_left_route.dart';
import 'cubit/nasa_cubit.dart';
import 'cubit/nasa_state.dart';
import 'detail_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late NasaCubit _cubit;

  @override
  void initState() {
    _cubit = NasaCubit();
    _cubit.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NasaCubit>.value(
      value: _cubit,
      child: BlocBuilder<NasaCubit, NasaState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: const Text('Nasa Apod')),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          _cubit.onChanged(value);
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SizedBox(
                          height: 1000,
                          child: ListView.builder(
                            itemCount: _cubit.listfiltro.length,
                            itemBuilder: (context, index) {
                              final model = _cubit.listfiltro[index];
                              return ListTile(
                                  title: Text(model.title!),
                                  onTap: () {
                                    Navigator.of(context).push(SlideLeft(
                                        page: DetailPage(model: model)));
                                  });
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
