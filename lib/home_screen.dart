import 'package:flutter/material.dart';
import 'package:stack_example/search_screen.dart';
import 'package:stack_example/widgets/my_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 12.0 ,left: 12.0, top: 32.0 , bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              height: MediaQuery.of(context).size.height/2.3,
              decoration:const BoxDecoration(
                color: Colors.green,
borderRadius: BorderRadius.all(Radius.circular(62.0)),
image: DecorationImage(image: AssetImage('images/cat.jpg'),fit: BoxFit.cover),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Jacob Roberts',style: TextStyle(fontSize: 24.0 , color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(

                      width: MediaQuery.of(context).size.width / 1.2,
                      child:const Text('Use const with the constructor to improve performance                 Use const with the constructor to improve performance',style: TextStyle(fontSize: 12.0 , color: Colors.grey,),)),
                  Container(
                    margin:const EdgeInsets.symmetric(vertical: 26.0),
                    height: MediaQuery.of(context).size.height/9.5,
decoration: BoxDecoration(
  color: Colors.grey.shade300,
borderRadius: BorderRadius.circular(28.0),
),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "112",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " works",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              margin:const  EdgeInsets.only(right: 8),

                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Colors.white, width: 5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                                ),
                              ),
                            ),
                            Container(
                              margin:const  EdgeInsets.only(right: 45),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Colors.white, width: 5),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://burst.shopifycdn.com/photos/person-holds-a-book-over-a-stack-and-turns-the-page.jpg?width=925&exif=1&iptc=1"),
                                ),
                              ),
                            ),
                             Container(
                              margin: const EdgeInsets.only(right: 80),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Colors.white, width: 5),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://www.publicdomainpictures.net/pictures/320000/nahled/background-image.png"),
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyContainerWidget(color: Colors.blue.shade900, title: '3',subTitle: 'applications'),
                      MyContainerWidget(color: Colors.grey.shade200, title: '25',subTitle: 'Views Today',isColorWhite:false ),

                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

