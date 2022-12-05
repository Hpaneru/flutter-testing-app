part of screens;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AutovalidateMode autoValidate = AutovalidateMode.disabled;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? email, password;

  void onLogin() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        // TODO: IMPLEMENT LOGIN LOGIC HERE

      } catch (e) {
        // TODO: SHOW ERROR MESSAGE TO USER THROUGH SNACKBAR
        log(e.toString());
      }
    } else {
      setState(() {
        autoValidate = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomTextField(
                    autovalidateMode: autoValidate,
                    hintText: "Enter your email",
                    validator: FieldValidator.validateEmail,
                    onChanged: (String value) {
                      email = value;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    autovalidateMode: autoValidate,
                    hintText: "Enter your password",
                    obscureText: true,
                    validator: FieldValidator.validatePassword,
                    onChanged: (String value) {
                      password = value;
                    },
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: onLogin,
                    child: const Text("LOGIN"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
