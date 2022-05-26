import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String id = '1001';
    String name = 'Sheron';
    String email = 'sheron@gmail.com';
    String image = 'http://www.venmond.com/demo/vendroid/img/avatar/big.jpg';
    String mobile = '0761234567';
    String address = 'Sample Address';
    String about = 'Change password';
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/greenbg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: OvalBottomBorderClipper(),
                      child: Container(
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://1.bp.blogspot.com/-vJZNKgXn9WE/YJiopYK-dOI/AAAAAAAAE90/Tbo1lqMmJF8_GikCcQrli6cWL2psBSDPgCLcBGAsYHQ/w360-h640/Cb-edit-background%252CCb-edit-background-hd%252CCb-edit-background-image%252CPhoto%2B%25287%2529.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        foregroundDecoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.6),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 80,
                            child: CircleAvatar(
                              radius: 78,
                              backgroundImage: NetworkImage(image),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            name.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(45)),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.add_business_outlined,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                onPressed: () {},
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Reward Points'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(45)),
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.add_chart_sharp,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                onPressed: () {},
                              ),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Rewards'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 350,
                child: Column(
                  children: [
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.mail,
                          size: 35,
                        ),
                        title: Text('Email'),
                        subtitle: Text(email),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.mobile_friendly,
                          size: 35,
                        ),
                        title: Text('Mobile'),
                        subtitle: (id != null)
                            ? (mobile != null)
                                ? Text(mobile)
                                : Text(
                                    'Update Phone Number',
                                    style:
                                        TextStyle(color: Colors.green.shade300),
                                  )
                            : (mobile != null)
                                ? Text(mobile)
                                : Text(
                                    'No Data',
                                  ),
                        trailing: (id != null)
                            ? IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  size: 18,
                                ),
                                onPressed: () {},
                              )
                            : null,
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.location_city,
                          size: 35,
                        ),
                        title: Text('Address'),
                        subtitle: (id != null)
                            ? (address != null)
                                ? Text(address)
                                : Text(
                                    'Update Address (Important to Delivery), sfwefwefw e, fewefwefwef , ewfwef',
                                    style:
                                        TextStyle(color: Colors.green.shade300),
                                  )
                            : (address != null)
                                ? Text(address)
                                : Text(
                                    'No Data',
                                  ),
                        trailing: (id != null)
                            ? IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  size: 18,
                                ),
                                onPressed: () {},
                              )
                            : null,
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.description,
                          size: 35,
                        ),
                        title: Text('Password'),
                        subtitle: (id != null)
                            ? (about != null)
                                ? Text(about)
                                : Text(
                                    'Add something about you',
                                    style:
                                        TextStyle(color: Colors.green.shade300),
                                  )
                            : (about != null)
                                ? Text(about)
                                : Text(
                                    'No Data',
                                  ),
                        trailing: (id != null)
                            ? IconButton(
                                icon: Icon(
                                  Icons.edit,
                                  size: 18,
                                ),
                                onPressed: () {},
                              )
                            : null,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
