import "package:blogging/components/my_button.dart";
import "package:blogging/components/my_textfield.dart";
import "package:blogging/pages/register_page.dart";
import "package:flutter_neumorphic_plus/flutter_neumorphic.dart";

class Uploadpostpage extends StatefulWidget {
  const Uploadpostpage({super.key});

  @override
  State<Uploadpostpage> createState() => _UploadpostpageState();
}

class _UploadpostpageState extends State<Uploadpostpage> {
  var selectedcategoryid;
  final TextEditingController titlecontroller = TextEditingController();
  final TextEditingController descriptioncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NeumorphicAppBar(
        title: Text("New Post"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(
            height: 20,
          ),
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
              depth: 8,
              lightSource: LightSource.topLeft,
            ),
            child: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.photo,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Upload \n Photo',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          MyTextField(
            controller: titlecontroller,
            hintText: ' Enter Title',
            obscureText: false,
          ),
          SizedBox(
            height: 30,
          ),
          MyTextField(
            controller: descriptioncontroller,
            hintText: 'Enter description',
            obscureText: false,
          ),
          SizedBox(
            height: 30,
          ),
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
              depth: -4,
              lightSource: LightSource.topLeft,
              //color: Colors.grey
            ),
            child: DropdownButtonFormField<int>(
              iconEnabledColor: Theme.of(context).colorScheme.primary,
              onChanged: (i) {},
              items: [
                DropdownMenuItem(
                  child: Text(
                    "Flutter",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  value: 1,
                )
              ],
              decoration: InputDecoration(
                hintText: 'Select category',
                hintStyle:
                    TextStyle(color: Theme.of(context).colorScheme.primary),
                contentPadding: EdgeInsets.only(
                  left: 10,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          MyButton(onPressed: () {}, text: 'Upload'),
        ],
      ),
    );
  }
}
