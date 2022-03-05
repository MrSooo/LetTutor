import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  DateTime selectedDate = DateTime.now();
  var countryName = 'Vietnam';

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  final List<String> levelItems = ['Beginer', 'Intermediate', 'Advanced'];
  var level = 'Beginer';

  final List<String> categories = [
    'TOEIC',
    'TOEFL',
    'IELTS',
    'PET',
    'KET',
    'FLYERS'
  ];
  var wantToLearn = 'IELTS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: const [
                        CircleAvatar(
                            radius: 75,
                            backgroundImage: NetworkImage('imageUrl')),
                        Positioned(
                          child: Icon(Icons.camera_alt),
                          bottom: 0,
                          right: 0,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Tu Le',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'ozaaluu@gmail.com',
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text('Birthday'),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () => _selectDate(context),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          selectedDate.toString().split(' ')[0],
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('Phone number'),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                maxLines: 1,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Phone number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('Country'),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () => showCountryPicker(
                  context: context,
                  onSelect: (Country country) {
                    setState(() {
                      countryName = country.displayNameNoCountryCode;
                    });
                  },
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          countryName,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('My level'),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isExpanded: true,
                    value: level,
                    items: levelItems
                        .map((e) =>
                            DropdownMenuItem<String>(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (selected) {
                      setState(() {
                        level = selected as String;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('Want to Learn'),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isExpanded: true,
                    value: wantToLearn,
                    items: categories
                        .map((e) =>
                            DropdownMenuItem<String>(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (selected) {
                      setState(() {
                        wantToLearn = selected as String;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => loginScreen(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
