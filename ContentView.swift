//
//  ContentView.swift
//  YoutubeClone
//
//  Created by Berke Sarıtaş on 29.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Color(#colorLiteral(red: 0.1529411376, green: 0.1529411376, blue: 0.1529411376, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack{
                    ControlPanel()
                    SelectionPanel()
                    ChannelPhoto()
                }
                .padding(.top , 60)
                .offset(y : -30)
                
                
                VStack{
                    LogoPanel()
                        .padding(.top )
                    EditManage()
                        .padding()
                    
                    Text("Uploads")
                        .padding(.trailing , 280)
                        .padding(.vertical , 15)
                    
                    FirstVideo()
                    FirstVideo()

                }.offset(y : -30)

                
                Spacer()
                
                Menu()
            }.foregroundColor(.white)
            

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ControlPanel: View {
    var body: some View{
        HStack(spacing : 20){
            Image(systemName: "arrow.left")
            Text("Berke Sarıtaş")
            Spacer()
            Image(systemName: "tv")
            Image(systemName: "magnifyingglass")
            Image(systemName: "ellipsis")
                .rotationEffect(.degrees(90))
        }
        .padding(.bottom , 15)
        .font(.system(size: 20))
        .padding(.horizontal, 20)
    }
}

struct SelectionPanel: View {
    var body: some View {
        HStack(spacing : 20){
            Text("Home")
            Text("Videos")
            Text("Playlists")
            Text("Channels")
        }.textCase(.uppercase)
        
    }
}

struct ChannelPhoto: View {
    var body: some View {
        Image("backImage")
            .resizable()
            .frame(width: .infinity, height: 100, alignment: .center)
            .scaledToFit()
            
    }
}

struct LogoPanel : View {
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .padding(.leading , 10)
                    
                
                Text("Berke")
                    .foregroundColor(.black)
                    .padding(.leading ,10)
            }
            
            VStack(alignment: .leading, spacing: 5){
                Text("Berke Sarıtaş")
                    .font(.system(size: 20 , weight: .bold))
                
                Text("12 subscribers")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                    
            }
            Spacer()

        }
        
        
    }
}

struct EditManage: View {
    var body: some View {
        HStack{
            Text("Edit channel")
                .textCase(.uppercase)
                .padding(.horizontal , 20)
                .padding(.vertical , 10)
                .foregroundColor(Color(#colorLiteral(red: 0.1800940633, green: 0.4308347702, blue: 0.6509109735, alpha: 1)))
                .border(Color(#colorLiteral(red: 0.1800940633, green: 0.4308347702, blue: 0.6509109735, alpha: 1)))
            
            Text("Manage videos")
                .textCase(.uppercase)
                .padding(.horizontal , 20)
                .padding(.vertical , 10)
                .foregroundColor(Color(#colorLiteral(red: 0.1800940633, green: 0.4308347702, blue: 0.6509109735, alpha: 1)))
                .border(Color(#colorLiteral(red: 0.1800940633, green: 0.4308347702, blue: 0.6509109735, alpha: 1)))
        }
    }
}

struct FirstVideo: View {
    var body: some View {
        HStack{
            
            Image("backImage")
                .resizable()
                .frame(width: 180, height: 110, alignment: .center)
                .scaledToFit()
            
            VStack(alignment : .leading){
                Text("SwiftUI youtube clone")
                Text("#2 Views , Modifiers,")
                Text("Stacks (2021")
                
                HStack{
                    Text("60 views")
                    Text("15 hours ago")
                }
                .foregroundColor(.gray)
                .font(.system(size: 15))


            }
            
        }
        
    }
}

struct Menu: View{
    var body: some View{
        VStack{
            Rectangle()
                .frame(width: 400, height: 0.3)
                .foregroundColor(.gray)
                .padding(.bottom, 5)
            
            HStack(spacing: 30){
                VStack{
                    Image(systemName: "house.fill")
                        .font(.system(size: 20))
                    Text("Home")
                }
                
                VStack{
                    Image(systemName: "safari")
                        .font(.system(size: 20))
                    Text("Explore")
                }
                
                Image(systemName: "plus.circle")
                    .scaleEffect(2.2)
                    .padding(.horizontal, 10)
                
                VStack{
                    Image(systemName: "rectangle.stack.person.crop")
                        .font(.system(size: 20))
                    Text("Subs")
                }
                
                VStack{
                    Image(systemName: "play.rectangle")
                        .font(.system(size: 20))
                    Text("Library")
                }
            }.padding(.bottom, 30)
        }
    }
}
