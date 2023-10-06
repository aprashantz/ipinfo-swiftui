import Foundation
import SwiftUI

struct DataLoadedView: View{
  @Binding  var ipData: IPInfoModel?
    var body: some View{
        VStack(alignment: .center,spacing: 10) {
            Text("Country: \(ipData?.country ?? "")")
            Text("City: \(ipData?.city ?? "")")
            Text("TimeZone: \(ipData?.timezone ?? "")")
            Text("ISP: \(ipData?.isp ?? "")")
            Text("My IP: \(ipData?.query ?? "")")
        }
    }
}


