import 'package:fuzzy/plugin_list.dart';
import '../../../../config.dart';

class AddAddressButtonSubLayout extends StatelessWidget {
  const AddAddressButtonSubLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, theme, child) {
      return Stack(
        children: [
          Container(
              height: Sizes.s73,
              padding: const EdgeInsets.all(Insets.i10),
              width: MediaQuery.of(context).size.width,
              //decoration
              decoration: ShippingWidget().decorShipping(context),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //button cancel
                    ButtonCommon(
                        title: language(context, appFonts.cancle),
                        width: Sizes.s157,
                        height: Sizes.s48,
                        color: isTheme(context)
                            ? appColor(context).appTheme.transparentColor
                            : appColor(context).appTheme.searchBackground,
                        style: appCss.dmPoppinsRegular16
                            .textColor(appColor(context).appTheme.lightText),
                        radius: AppRadius.r10,
                        onTap: () => route.pop(context)),
                    //button add
                    ButtonCommon(
                        title: language(context, appFonts.add),
                        width: Sizes.s157,
                        height: Sizes.s48,
                        color: isThemeButtonColorReturn(context),
                        style: appCss.dmPoppinsRegular16
                            .textColor(isThemeColorReturnDark(context)),
                        radius: AppRadius.r10,
                        onTap: () => route.pop(context))
                  ]))
        ],
      );
    });
  }
}