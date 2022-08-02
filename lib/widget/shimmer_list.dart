import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class ShimmerList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, index){
            return Padding(padding: EdgeInsets.all(12),
            child: Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.white,
              child: ShimmerLayout()),
            );
          },
        ),
    );
  }

}
 class ShimmerLayout extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
     double width = MediaQuery.of(context).size.width;
     return Container(
       margin: EdgeInsets.symmetric(vertical: 8),
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             height: 50,
             width: 50,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 color: Colors.grey),
           ),
           Padding(
             padding: const EdgeInsets.fromLTRB(16,0, 12, 0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                   height: height*.010,
                   width: width*.50,
                   color: Colors.grey,
                 ),
                 SizedBox(height: 5,),
                 Container(
                   height: height*.010,
                   width: width*.30,
                   color: Colors.grey,
                 ),
                 SizedBox(height: 5,),
                 Container(
                   height: height*.010,
                   width: width*.80,
                   color: Colors.grey,
                 ),
                 SizedBox(height: 5,),
               ],
             ),
           )
         ],
       ),
     );
   }
 }
