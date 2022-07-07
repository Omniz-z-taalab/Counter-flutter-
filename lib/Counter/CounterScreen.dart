import 'package:counter/Cubit/CounerCubit.dart';
import 'package:counter/Cubit/CounterStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return CounterCubit();
      },
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if(state is CounterInitialState){
          }
          if(state is CounterIncrementState){
          }
          if(state is CounterDecrementState){
            print(BlocProvider.of<CounterCubit>(context).counter
            );
          }
        },
        builder: (context, state) {
          return
              Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).decrement();
                        },
                        backgroundColor: Colors.purple.shade300,
                        child: const Icon(
                          FontAwesomeIcons.minus,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                         '${BlocProvider.of<CounterCubit>(context).counter}'
          ,
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          BlocProvider
                              .of<CounterCubit>(context)
                              .increment();
                        },
                        backgroundColor: Colors.purple.shade300,
                        child: Icon(FontAwesomeIcons.add),
                      ),

                  ]),
            
          );
        },
      ),
    );
  }
}
