//
//  SkyUITheme.swift
//  ThemeExample
//
//  Created by MAHESHWARAN on 17/04/25.
//

import SwiftUI

public protocol SkyUITheme {
  
  var primary: SwiftUI.Color { get }
  var secondary: SwiftUI.Color { get }
  var tertiary: SwiftUI.Color { get }
}

// MARK: - SkyUIThemeManager

public final class SkyUIThemeManager {
  
  public static let shared = SkyUIThemeManager()
  
  public var theme: SkyUITheme = DefaultTheme()
  
  private init() {}
  
  /// To change custom theme
  ///
  /// Example Usage
  ///
  ///     let newTheme = DefaultTheme1()
  ///
  ///     SkyUIThemeManager.shared.setTheme(newTheme)
  ///
  public func setTheme(_ theme: SkyUITheme) {
    self.theme = theme
  }
}

// MARK: - DefaultTheme

struct DefaultTheme: SkyUITheme {
  
  var primary: SwiftUI.Color {
    color(withName: "primary")
  }
  
  var secondary: SwiftUI.Color {
    color(withName: "secondary")
  }
  
  var tertiary: SwiftUI.Color {
    color(withName: "tertiary")
  }
  
  private func color(withName name: String) -> SwiftUI.Color {
    SwiftUI.Color.with(name: name)
  }
}

public extension SwiftUI.Color {
  
  static func with(name: String) -> SwiftUI.Color {
    SwiftUI.Color(name, bundle: Bundle.main)
  }
}

// MARK: - Extensions

public extension Color {
  
  static var primaryTUI: SwiftUI.Color {
    SkyUIThemeManager.shared.theme.primary
  }
  
  static var secondaryTUI: SwiftUI.Color {
    SkyUIThemeManager.shared.theme.secondary
  }
  
  static var tertiary: SwiftUI.Color {
    SkyUIThemeManager.shared.theme.tertiary
  }
}

// MARK: -------------------------------------------------------------------------------------------



