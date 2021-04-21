//
//  FiveView.swift
//  ListenUp
//

//

import SwiftUI

struct FiveView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
    }
    }
}

struct FiveView_Previews: PreviewProvider {
    static var previews: some View {
        FiveView()
    }
}
