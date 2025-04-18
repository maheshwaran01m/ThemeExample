//
//  AppColorExtension.swift
//  ColorExample
//
//  Created by MAHESHWARAN on 18/04/25.
//

import SwiftUI

public typealias SwiftColor = SwiftUI.Color

extension AppColor: View, @unchecked Sendable {
  
  public var body: some View {
    SwiftUI.Color(uiColor: self.color)
  }
}
