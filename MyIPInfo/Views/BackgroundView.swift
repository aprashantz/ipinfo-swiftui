import Foundation
import SwiftUI

struct BackgroundView: View {
    
    var body: some View {
        LinearGradient(colors: [.black,.blue,], startPoint: .topTrailing, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview{
    BackgroundView()
}
