// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Colors

// swiftlint:disable identifier_name line_length type_body_length
internal struct AppColor {
  internal let rgbaValue: UInt32
  internal var color: Color { return Color(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  internal static let error0 = AppColor(rgbaValue: 0x000000ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#410004"></span>
  /// Alpha: 100% <br/> (0x410004ff)
  internal static let error10 = AppColor(rgbaValue: 0x410004ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let error100 = AppColor(rgbaValue: 0xffffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#65090e"></span>
  /// Alpha: 100% <br/> (0x65090eff)
  internal static let error20 = AppColor(rgbaValue: 0x65090eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#852221"></span>
  /// Alpha: 100% <br/> (0x852221ff)
  internal static let error30 = AppColor(rgbaValue: 0x852221ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a53a36"></span>
  /// Alpha: 100% <br/> (0xa53a36ff)
  internal static let error40 = AppColor(rgbaValue: 0xa53a36ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c5524c"></span>
  /// Alpha: 100% <br/> (0xc5524cff)
  internal static let error50 = AppColor(rgbaValue: 0xc5524cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e66a63"></span>
  /// Alpha: 100% <br/> (0xe66a63ff)
  internal static let error60 = AppColor(rgbaValue: 0xe66a63ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff8981"></span>
  /// Alpha: 100% <br/> (0xff8981ff)
  internal static let error70 = AppColor(rgbaValue: 0xff8981ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffb3ad"></span>
  /// Alpha: 100% <br/> (0xffb3adff)
  internal static let error80 = AppColor(rgbaValue: 0xffb3adff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffdad7"></span>
  /// Alpha: 100% <br/> (0xffdad7ff)
  internal static let error90 = AppColor(rgbaValue: 0xffdad7ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffedeb"></span>
  /// Alpha: 100% <br/> (0xffedebff)
  internal static let error95 = AppColor(rgbaValue: 0xffedebff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fffbff"></span>
  /// Alpha: 100% <br/> (0xfffbffff)
  internal static let error99 = AppColor(rgbaValue: 0xfffbffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  internal static let neutral0 = AppColor(rgbaValue: 0x000000ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1c1b1c"></span>
  /// Alpha: 100% <br/> (0x1c1b1cff)
  internal static let neutral10 = AppColor(rgbaValue: 0x1c1b1cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let neutral100 = AppColor(rgbaValue: 0xffffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#313030"></span>
  /// Alpha: 100% <br/> (0x313030ff)
  internal static let neutral20 = AppColor(rgbaValue: 0x313030ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#484646"></span>
  /// Alpha: 100% <br/> (0x484646ff)
  internal static let neutral30 = AppColor(rgbaValue: 0x484646ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#605e5e"></span>
  /// Alpha: 100% <br/> (0x605e5eff)
  internal static let neutral40 = AppColor(rgbaValue: 0x605e5eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#797676"></span>
  /// Alpha: 100% <br/> (0x797676ff)
  internal static let neutral50 = AppColor(rgbaValue: 0x797676ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#939090"></span>
  /// Alpha: 100% <br/> (0x939090ff)
  internal static let neutral60 = AppColor(rgbaValue: 0x939090ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#adaaaa"></span>
  /// Alpha: 100% <br/> (0xadaaaaff)
  internal static let neutral70 = AppColor(rgbaValue: 0xadaaaaff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c9c6c5"></span>
  /// Alpha: 100% <br/> (0xc9c6c5ff)
  internal static let neutral80 = AppColor(rgbaValue: 0xc9c6c5ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e5e1e1"></span>
  /// Alpha: 100% <br/> (0xe5e1e1ff)
  internal static let neutral90 = AppColor(rgbaValue: 0xe5e1e1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f4f0ef"></span>
  /// Alpha: 100% <br/> (0xf4f0efff)
  internal static let neutral95 = AppColor(rgbaValue: 0xf4f0efff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fffbff"></span>
  /// Alpha: 100% <br/> (0xfffbffff)
  internal static let neutral99 = AppColor(rgbaValue: 0xfffbffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  internal static let neutralVariant0 = AppColor(rgbaValue: 0x000000ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1c1b1c"></span>
  /// Alpha: 100% <br/> (0x1c1b1cff)
  internal static let neutralVariant10 = AppColor(rgbaValue: 0x1c1b1cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let neutralVariant100 = AppColor(rgbaValue: 0xffffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#313031"></span>
  /// Alpha: 100% <br/> (0x313031ff)
  internal static let neutralVariant20 = AppColor(rgbaValue: 0x313031ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#484647"></span>
  /// Alpha: 100% <br/> (0x484647ff)
  internal static let neutralVariant30 = AppColor(rgbaValue: 0x484647ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#605e5f"></span>
  /// Alpha: 100% <br/> (0x605e5fff)
  internal static let neutralVariant40 = AppColor(rgbaValue: 0x605e5fff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#797677"></span>
  /// Alpha: 100% <br/> (0x797677ff)
  internal static let neutralVariant50 = AppColor(rgbaValue: 0x797677ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#939091"></span>
  /// Alpha: 100% <br/> (0x939091ff)
  internal static let neutralVariant60 = AppColor(rgbaValue: 0x939091ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#aeaaab"></span>
  /// Alpha: 100% <br/> (0xaeaaabff)
  internal static let neutralVariant70 = AppColor(rgbaValue: 0xaeaaabff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c9c5c6"></span>
  /// Alpha: 100% <br/> (0xc9c5c6ff)
  internal static let neutralVariant80 = AppColor(rgbaValue: 0xc9c5c6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e6e1e2"></span>
  /// Alpha: 100% <br/> (0xe6e1e2ff)
  internal static let neutralVariant90 = AppColor(rgbaValue: 0xe6e1e2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f4f0f0"></span>
  /// Alpha: 100% <br/> (0xf4f0f0ff)
  internal static let neutralVariant95 = AppColor(rgbaValue: 0xf4f0f0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fffbff"></span>
  /// Alpha: 100% <br/> (0xfffbffff)
  internal static let neutralVariant99 = AppColor(rgbaValue: 0xfffbffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  internal static let primary0 = AppColor(rgbaValue: 0x000000ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#22005d"></span>
  /// Alpha: 100% <br/> (0x22005dff)
  internal static let primary10 = AppColor(rgbaValue: 0x22005dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let primary100 = AppColor(rgbaValue: 0xffffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#381e72"></span>
  /// Alpha: 100% <br/> (0x381e72ff)
  internal static let primary20 = AppColor(rgbaValue: 0x381e72ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4f378a"></span>
  /// Alpha: 100% <br/> (0x4f378aff)
  internal static let primary30 = AppColor(rgbaValue: 0x4f378aff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#6750a4"></span>
  /// Alpha: 100% <br/> (0x6750a4ff)
  internal static let primary40 = AppColor(rgbaValue: 0x6750a4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#8069bf"></span>
  /// Alpha: 100% <br/> (0x8069bfff)
  internal static let primary50 = AppColor(rgbaValue: 0x8069bfff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#9a83db"></span>
  /// Alpha: 100% <br/> (0x9a83dbff)
  internal static let primary60 = AppColor(rgbaValue: 0x9a83dbff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b69df7"></span>
  /// Alpha: 100% <br/> (0xb69df7ff)
  internal static let primary70 = AppColor(rgbaValue: 0xb69df7ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cfbcff"></span>
  /// Alpha: 100% <br/> (0xcfbcffff)
  internal static let primary80 = AppColor(rgbaValue: 0xcfbcffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e9ddff"></span>
  /// Alpha: 100% <br/> (0xe9ddffff)
  internal static let primary90 = AppColor(rgbaValue: 0xe9ddffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f6eeff"></span>
  /// Alpha: 100% <br/> (0xf6eeffff)
  internal static let primary95 = AppColor(rgbaValue: 0xf6eeffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fffbff"></span>
  /// Alpha: 100% <br/> (0xfffbffff)
  internal static let primary99 = AppColor(rgbaValue: 0xfffbffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  internal static let secondary0 = AppColor(rgbaValue: 0x000000ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#1e192b"></span>
  /// Alpha: 100% <br/> (0x1e192bff)
  internal static let secondary10 = AppColor(rgbaValue: 0x1e192bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let secondary100 = AppColor(rgbaValue: 0xffffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#332d41"></span>
  /// Alpha: 100% <br/> (0x332d41ff)
  internal static let secondary20 = AppColor(rgbaValue: 0x332d41ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4a4459"></span>
  /// Alpha: 100% <br/> (0x4a4459ff)
  internal static let secondary30 = AppColor(rgbaValue: 0x4a4459ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#625b71"></span>
  /// Alpha: 100% <br/> (0x625b71ff)
  internal static let secondary40 = AppColor(rgbaValue: 0x625b71ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7b738b"></span>
  /// Alpha: 100% <br/> (0x7b738bff)
  internal static let secondary50 = AppColor(rgbaValue: 0x7b738bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#958da5"></span>
  /// Alpha: 100% <br/> (0x958da5ff)
  internal static let secondary60 = AppColor(rgbaValue: 0x958da5ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b0a7c0"></span>
  /// Alpha: 100% <br/> (0xb0a7c0ff)
  internal static let secondary70 = AppColor(rgbaValue: 0xb0a7c0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ccc2dc"></span>
  /// Alpha: 100% <br/> (0xccc2dcff)
  internal static let secondary80 = AppColor(rgbaValue: 0xccc2dcff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e8def9"></span>
  /// Alpha: 100% <br/> (0xe8def9ff)
  internal static let secondary90 = AppColor(rgbaValue: 0xe8def9ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f6eeff"></span>
  /// Alpha: 100% <br/> (0xf6eeffff)
  internal static let secondary95 = AppColor(rgbaValue: 0xf6eeffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fffbff"></span>
  /// Alpha: 100% <br/> (0xfffbffff)
  internal static let secondary99 = AppColor(rgbaValue: 0xfffbffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  internal static let tertiary0 = AppColor(rgbaValue: 0x000000ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#31101d"></span>
  /// Alpha: 100% <br/> (0x31101dff)
  internal static let tertiary10 = AppColor(rgbaValue: 0x31101dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let tertiary100 = AppColor(rgbaValue: 0xffffffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4a2532"></span>
  /// Alpha: 100% <br/> (0x4a2532ff)
  internal static let tertiary20 = AppColor(rgbaValue: 0x4a2532ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#633b48"></span>
  /// Alpha: 100% <br/> (0x633b48ff)
  internal static let tertiary30 = AppColor(rgbaValue: 0x633b48ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7e5260"></span>
  /// Alpha: 100% <br/> (0x7e5260ff)
  internal static let tertiary40 = AppColor(rgbaValue: 0x7e5260ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#996a78"></span>
  /// Alpha: 100% <br/> (0x996a78ff)
  internal static let tertiary50 = AppColor(rgbaValue: 0x996a78ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b58392"></span>
  /// Alpha: 100% <br/> (0xb58392ff)
  internal static let tertiary60 = AppColor(rgbaValue: 0xb58392ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d29dac"></span>
  /// Alpha: 100% <br/> (0xd29dacff)
  internal static let tertiary70 = AppColor(rgbaValue: 0xd29dacff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#efb8c8"></span>
  /// Alpha: 100% <br/> (0xefb8c8ff)
  internal static let tertiary80 = AppColor(rgbaValue: 0xefb8c8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffd9e3"></span>
  /// Alpha: 100% <br/> (0xffd9e3ff)
  internal static let tertiary90 = AppColor(rgbaValue: 0xffd9e3ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffecf0"></span>
  /// Alpha: 100% <br/> (0xffecf0ff)
  internal static let tertiary95 = AppColor(rgbaValue: 0xffecf0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fffbff"></span>
  /// Alpha: 100% <br/> (0xfffbffff)
  internal static let tertiary99 = AppColor(rgbaValue: 0xfffbffff)
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let components = RGBAComponents(rgbaValue: rgbaValue).normalized
    self.init(red: components[0], green: components[1], blue: components[2], alpha: components[3])
  }
}

private struct RGBAComponents {
  let rgbaValue: UInt32

  private var shifts: [UInt32] {
    [
      rgbaValue >> 24, // red
      rgbaValue >> 16, // green
      rgbaValue >> 8,  // blue
      rgbaValue        // alpha
    ]
  }

  private var components: [CGFloat] {
    shifts.map { CGFloat($0 & 0xff) }
  }

  var normalized: [CGFloat] {
    components.map { $0 / 255.0 }
  }
}

internal extension Color {
  convenience init(named color: AppColor) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
