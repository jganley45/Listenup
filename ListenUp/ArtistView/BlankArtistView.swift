//
//  AddView.swift
//  ListenUp
//
//
//

import SwiftUI
struct BlankArtistView: View {
    var artist: Artist
    var body: some View {
            NavigationView {
 
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                            VStack {
                                Image(artist.image!)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                Text(artist.name!)
                                        .bold()
                                        .font(.system(size: 50))
                                        .foregroundColor(.white)
                               // Spacer()
                            }
                            VStack{
                                HStack(spacing: 35) {
                                    Button(action: {
                                        print("b3 tapped")
                                    }) {InstaCapsule()}
                                   
                                    Button(action: {
                                        print("b3 tapped")
                                    }) {TwitterCapsule()}
                                        
                                    Button(action: {
                                        print("b3 tapped")
                                    }) {YouTubeCapsule()}
                                    }
                                }
                                .navigationBarHidden(true)
                    }
                }
            }
        }
    }

//struct BlankArtistView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            BlankArtistView()        }
//    }
//}
