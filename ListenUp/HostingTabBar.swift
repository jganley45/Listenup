//
//  HostinTabBar.swift
//  ListenUp
//

//

import SwiftUI

struct HostingTabBar: View {
    /*
    private enum Tab: Hashable {
            case one
            case two
            case three
            case four}
 */
    //@State private var selectedTab: Tab = .one
    @State private var selection = 0
    
    
    var body: some View {
        //NavigationView{
        TabView(selection: $selection) {
           OneView()
            .tag(0)
            .tabItem {
               Image(systemName: "flame.fill").font(.title)

          }
          TwoView()
            .tag(1)
            .tabItem {
               Image(systemName: "heart.fill").font(.title)
          }
          ThreeView()
            .tag(2)
            .tabItem {
               Image(systemName: "person.3.fill").font(.title)
          }
          FourView()
            .tag(3)
            .tabItem {
               Image(systemName: "bell.fill").font(.title)
          }
          FiveView()
              .tag(3)
              .tabItem {
                 Image(systemName: "person.crop.circle.fill").font(.title)
            }

        }//.tabViewStyle(PageTabViewStyle()) //end of tab view
       // .navigationBarHidden(true)
       // }//end of nav view
    }
}



struct HostingTabBar_Previews: PreviewProvider {
    static var previews: some View {
        HostingTabBar()
    }
}

