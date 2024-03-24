import 'package:flutter/material.dart';
import 'package:ppc/pages/navigation_options/requests/doctor/cardiologist.dart';

class CardiologistCard extends StatelessWidget {
  const CardiologistCard(
      {required this.cardiologistInfo, required this.onTap, super.key});
  final Cardiologist cardiologistInfo;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(50, 50, 50, 1),
            ),
            color: const Color.fromRGBO(30, 30, 30, 1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("lib/assets/gallery_placeholder.png"),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(224, 171, 67, 1),
                      ),
                      cardiologistInfo.name,
                    ),
                    Text(
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.5,
                        color: Color.fromRGBO(159, 159, 159, 1),
                      ),
                      cardiologistInfo.education,
                    ),
                    Text(
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.5,
                        color: Color.fromRGBO(159, 159, 159, 1),
                      ),
                      "${cardiologistInfo.specialization} | ${cardiologistInfo.experience}+ Yrs experience",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
