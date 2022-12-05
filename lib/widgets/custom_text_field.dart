part of widgets;

class CustomTextField extends StatelessWidget {
  final AutovalidateMode autovalidateMode;
  final TextCapitalization textCapitalization;
  final String? initialValue, hintText;
  final TextEditingController? controller;
  final Function(String)? onChanged, onFieldSubmit, validator, onSaved;
  final bool? enabled;
  final TextInputType textInputType;
  final bool obscureText;
  final Widget? suffixIconWidget;
  final VoidCallback? onTap;

  const CustomTextField({
    Key? key,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.textCapitalization = TextCapitalization.none,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.onFieldSubmit,
    this.onSaved,
    this.validator,
    this.hintText,
    this.enabled = true,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.suffixIconWidget,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 6.5,
      child: TextFormField(
        onTap: onTap,
        keyboardType: textInputType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.labelColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.labelColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.labelColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          filled: true,
          fillColor: AppColors.textFieldBgColor,
          hintText: hintText,
          hintStyle: Theme.of(context).primaryTextTheme.subtitle1,
          suffixIcon: suffixIconWidget,
        ),
        obscureText: obscureText,
        enabled: enabled,
        autovalidateMode: autovalidateMode,
        textCapitalization: textCapitalization,
        initialValue: initialValue,
        controller: controller,
        onChanged: (value) => onChanged?.call(value),
        onFieldSubmitted: (value) => onFieldSubmit?.call(value),
        onSaved: (value) => onFieldSubmit?.call(value!),
        validator: (value) => validator?.call(value!),
      ),
    );
  }
}
