import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LogginScreen extends StatelessWidget {
  const LogginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Logginbackgroudimg(),

            LogginContainer(),

            LogginBottom(),
           
          ],
        ),
        
      ),
    );
  }
}

class LogginBottom extends StatelessWidget {
  const LogginBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height - 150,
      right: 0,
      left: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
            width: 50,
            height: 50,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:const DecorationImage(
                image: AssetImage(
                  'asset/images/flat-color-icons_google.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image:const DecorationImage(
                image: AssetImage(
                  'asset/images/Vector.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
    
          ],
         ),
       const   SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Create new account ?',style: GoogleFonts.poppins(color: Color.fromRGBO(34, 34, 34, 0.6)),),
             Text('Signup',style: GoogleFonts.poppins(color: Color.fromRGBO(1, 35, 80, 1))),
            ],
          )
        ],
      ),
    
      
      
    );
  }
}

class LogginContainer extends StatelessWidget {
  const LogginContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 350,
      child: Container(
        height: 330,
        width: MediaQuery.of(context).size.width - 40,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 6.0,
              )
            ]),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Email',
                  hintStyle: GoogleFonts.poppins(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'password',
                  hintStyle: GoogleFonts.poppins(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password?',
                  style: GoogleFonts.poppins(),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                (context).go('/Productscreen');
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF314870),
                      Color(0xFF314870),
                    ],
                    stops: [0.0, 1.0],
                  ),
                ),
                child: Center(
                    child: Text(
                  'Loggin',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Logginbackgroudimg extends StatelessWidget {
  const Logginbackgroudimg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 500,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'asset/images/Rectangle 1.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 315, right: 300),
          child: Column(
            children: [
              Text(
                'LOGIN',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
