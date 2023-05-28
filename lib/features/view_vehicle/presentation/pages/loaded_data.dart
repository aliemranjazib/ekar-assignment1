import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/features/view_vehicle/presentation/components/bookingfee_and_contracts.dart';
import 'package:test1/features/view_vehicle/presentation/components/custom_thumb.dart';
import 'package:test1/features/view_vehicle/presentation/components/monthly_and_contract.dart';
import 'package:test1/features/view_vehicle/presentation/components/tenure_and_savings.dart';
import 'package:test1/features/view_vehicle/presentation/components/vehicle_about_box.dart';
import 'package:test1/shared/show_message.dart';

import 'package:test1/shared/style.dart';
import '../../data/model/model.dart' as vehc;
import '../components/chips.dart';
import '../components/custom_carousel.dart';
import '../components/tenure_box.dart';

class LoadedData extends StatefulWidget {
  final vehc.VehicleModel vehicle;
  final WidgetRef ref;
  LoadedData({
    Key? key,
    required this.vehicle,
    required this.ref,
  }) : super(key: key);

  @override
  State<LoadedData> createState() => _LoadedDataState();
}

class _LoadedDataState extends State<LoadedData> {
  List<Color> gcolors = [];

  double value = 0.0;

  getVehicles() async {
    for (var element in widget.vehicle.colors!) {
      if (element.name == "Bisque") {
        gcolors.add(Colors.brown.shade400);
      }
      if (element.name == "Dark Gray") {
        gcolors.add(Colors.grey);
      }
      if (element.name == "Clear Sky Metallic") {
        gcolors.add(Colors.blue);
      }
    }
  }

  @override
  void initState() {
    getVehicles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Image.network(
          //   "https://freepngimg.com/thumb/car/1-2-car-png-picture.png",
          //   height: 220,
          //   width: 220,
          // ),

          // Container(
          //   height: 100,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: NetworkImage(
          //           "https://cdn.pixabay.com/photo/2023/05/23/11/20/eastern-grey-kangaroo-8012540_1280.jpg"),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          Container(
            width: double.infinity,
            color: AppColors.bgColor,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 8),
                CustomCarouel(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "year - ${widget.vehicle.attributes!.year!}",
                      style: AppTextStyle.h3,
                    ),
                    Row(
                      children: [
                        const Text("Available color", style: AppTextStyle.h3),
                        const SizedBox(width: 10),
                        ...List.generate(
                            gcolors.length,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    backgroundColor: gcolors[index],
                                    radius: 5,
                                  ),
                                )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    monthAndContractBox("base price", "1,553", "AED/MONTH"),
                    monthAndContractBox("Contract Length", "3", "MONTHS"),
                  ],
                ),
                const SizedBox(height: 10),
                tenure_andsavings(),
                const SizedBox(height: 20),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 10,
                    inactiveTrackColor: Colors.white,
                    tickMarkShape: const RoundSliderTickMarkShape(),
                    overlayShape: SliderComponentShape.noThumb,
                    // tickMarkShape: CustomTickMarkShape(
                    //   tickMarkRadius: 5.0,
                    //   tickMarkOffset: 1,
                    // ),
                    // overlayShape: RoundSliderOverlayShape(overlayRadius: 1),
                    thumbShape: const CircleThumbShape(thumbRadius: 13),
                  ),
                  child: Slider(
                    value: value,
                    min: 0,
                    max: 100,
                    divisions: 3,
                    onChanged: (double newValue) {
                      setState(() {
                        value = newValue;
                      });
                      // Handle the slider value change
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("1"),
                      Text("3"),
                      Text("6"),
                      Text("9"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                bookingAndContracts("BOOKING FEE", "AED", "120", () {
                  showMessages(context, "how contracts works", 'lorum espm');
                }),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "About the vehicle",
                    style: AppTextStyle.h1.copyWith(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 18),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      vehicl_about_box(
                          "${widget.vehicle.attributes!.antiBrakeSystem}"),
                      vehicl_about_box(
                          "${widget.vehicle.attributes!.cityMileage}"),
                      vehicl_about_box(
                          "${widget.vehicle.attributes!.curbWeight}"),
                      vehicl_about_box(
                          "${widget.vehicle.attributes!.deliveryCharges}"),
                      vehicl_about_box("${widget.vehicle.attributes!.engine}"),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Key Features",
                    style: AppTextStyle.h1.copyWith(fontSize: 20),
                  ),
                ),
                chipList(),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class ViewVehicle extends StatefulWidget {
//   const ViewVehicle({super.key});

//   @override
//   State<ViewVehicle> createState() => _ViewVehicleState();
// }

// class _ViewVehicleState extends State<ViewVehicle> {
//   vehicle.VehicleModel? model;
//   double value = 0.0;
//   getVehicles() async {
//     model = await RemoteDate().getVehicleData();
//     if (model != null) {
//       for (var element in model!.colors!) {
//         if (element.name == "Bisque") {
//           gcolors.add(Colors.brown.shade400);
//         }
//         if (element.name == "Dark Gray") {
//           gcolors.add(Colors.grey);
//         }
//         if (element.name == "Clear Sky Metallic") {
//           gcolors.add(Colors.blue);
//         }
//       }
//     }
//   }

//   List<Color> gcolors = [];
//   getAvailableColors() async {
//     debugPrint("88 ${gcolors}");
//   }

//   @override
//   void initState() {
//     getVehicles();
//     getAvailableColors();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Ekar"),
//       ),
//       body: model == null
//           ? Center(child: CircularProgressIndicator())
//           : Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   Container(color: Colors.lightBlueAccent, height: 200),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("year - ${model!.attributes!.year}"),
//                       Row(
//                         children: [
//                           const Text("Available color"),
//                           SizedBox(width: 10),
//                           ...List.generate(
//                               gcolors.length,
//                               (index) => CircleAvatar(
//                                     backgroundColor: gcolors[index],
//                                     radius: 5,
//                                   )),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Text("contract length \n ${model!.attributes!.invoicePrice}"),
//                   Text("base price \n ${model!.attributes!.invoicePrice}"),
//                   SliderTheme(
//                     data: SliderTheme.of(context).copyWith(
//                       trackHeight: 10,
//                       activeTickMarkColor: Colors.amber,

//                       inactiveTrackColor: Colors.white,
//                       tickMarkShape: RoundSliderTickMarkShape(),
//                       // tickMarkShape: CustomTickMarkShape(
//                       //   tickMarkRadius: 5.0,
//                       //   tickMarkOffset: 1,
//                       // ),
//                       // overlayShape: RoundSliderOverlayShape(overlayRadius: 1),
//                       thumbShape: CircleThumbShape(thumbRadius: 13),
//                     ),
//                     child: Slider(
//                       value: value,
//                       min: 0,
//                       max: 100,
//                       onChanged: (double newValue) {
//                         setState(() {
//                           value = newValue;
//                         });
//                         // Handle the slider value change
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }
