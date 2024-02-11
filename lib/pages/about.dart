import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('About Us', style:GoogleFonts.montserrat(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),),
      ),
      body: Card(
        color: const Color.fromARGB(255, 170, 101, 255),
        child: ListView(
          children: [
           
              Card(
                color: const Color.fromARGB(255, 197, 152, 255),
                child: Column(
                  
                  children: [
                    Text('About AgroSnap', style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Agro Snap is a cutting-edge app revolutionizing agriculture by facilitating seamless data collection from farmers to empower administrators. We serve as the vital link connecting farmers and administrators, fostering collaboration and driving sustainable growth in the agricultural sector.', style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),),
                    ),
                  ],
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 197, 152, 255),
                child: Column(
                  children: [
                    Text('Our Mission', style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Our mission at Agro Snap is simple yet profound: to harness the power of data to transform agriculture. We are dedicated to providing administrators with valuable insights obtained directly from farmers, enabling informed decision-making, and promoting sustainable farming practices worldwide.', style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),),
                    ),
                  ],
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 197, 152, 255),
                child: Column(
                  children: [
                    Text('Key Features', style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('• Efficient Data Collection: Simplify the process of collecting comprehensive data from farmers, including crop yields, soil health, and weather conditions.', style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('• Real-time Communication: Facilitate instant sharing of information and updates between farmers and administrators, ensuring timely responses to agricultural challenges.', style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('• Customized Reporting: Offer customizable reports and dashboards to provide administrators with actionable insights into agricultural performance metrics.', style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('• Remote Monitoring: Enable administrators to remotely monitor field activities and crop conditions in real-time, enhancing crop protection and resource allocation.', style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),),
                    ),
                                        const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('• Scalable & Secure Platform: Built on robust infrastructure, our platform ensures scalability and security to accommodate the needs of agricultural enterprises of all sizes while maintaining data privacy standards.', style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),),
                    ),
                                        const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('• Collaborative Decision Support: Foster collaboration among farmers, experts, and stakeholders to implement evidence-based strategies and address agricultural challenges effectively.', style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),),
                    ),
          ],
        ),
      ),
   ])) );
  }
}