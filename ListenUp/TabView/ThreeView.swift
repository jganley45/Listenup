//
//  threeview.swift
//  ListenUp
//
//

import SwiftUI

struct ThreeView: View {
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
    }
}
}


struct ThreeView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeView()
    }
}
