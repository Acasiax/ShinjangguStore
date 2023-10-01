//
//  Jjanggustore.swift
//  ShinjangguStore
//
//  Created by 이윤지 on 2023/07/11.
//

import SwiftUI
//짱구 스토어
struct Jjanggustore: View {
    var body: some View {
        Home()
    }
}

struct Jjanggustore_Previews: PreviewProvider {
    static var previews: some View {
        Jjanggustore()
    }
}


struct Home: View {
    @Environment(\.presentationMode) var presentaionMode
    var colums = Array(repeating: GridItem(.flexible(),spacing: 15), count: 2)
    @State var selectedmenu : Menu = menus[0]
    @Namespace var namespace
    @State var showDetailView = false
    @State var showContentView = false
    
    
    var body: some View {
        ZStack{
            ScrollView(.vertical,showsIndicators: false){
                HStack{
                    Image(systemName: "house.fill")
                        .foregroundColor(.green)
                    Text("짱구상점")
                        .foregroundColor(.orange.opacity(0.9))
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease")
                            .foregroundColor(.green)
                    }

                }
                .padding([.horizontal,.top])
                
                LazyVGrid(columns: colums, spacing: 15){
                    ForEach(menus){menu in
                        VStack(alignment: .leading, spacing: 15){
                            //이미지를 넣을거에요
                            Image(menu.image)
                                .resizable()
                                .frame(height: 200)
                                .background(Color.green.opacity(0.5))
                                .cornerRadius(30)
                            
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        showDetailView.toggle()
                                        selectedmenu = menu
                                        
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
                                            showContentView.toggle()
                                        }
                                    }
                                    
                                }
                            Text(menu.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Text(menu.price)
                                .foregroundColor(Color.gray)
                        }
                        .matchedGeometryEffect(id: menu.id, in: namespace)
                        
                    }
                }
                .padding(.horizontal)
                .padding(.bottom,60)
            }
            if showDetailView {
                VStack{
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                        Image(selectedmenu.image)
                            .resizable()
                            .frame(height: 300)
                            .matchedGeometryEffect(id: selectedmenu.id, in: namespace)
                        
                        if showContentView{
                            HStack{
                                Button {
                                    showContentView.toggle()
                                    withAnimation(.spring()){
                                        showDetailView.toggle()
                                    }
                                } label: {
                                    Image(systemName: "xmark")
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.black.opacity(0.7))
                                        .clipShape(Circle())
                                }
Spacer()
                                
                                
                                
                                
                            }
                            
                        }
   
                    }
                    ScrollView(.vertical, showsIndicators: false){
                        if showDetailView{
                            VStack{
                                HStack{
                                    Text(selectedmenu.title)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    Spacer()
                                    
                                    
                                }
                                .padding(.top)
                                .padding(.horizontal)
                                
                                Text(selectedmenu.text)
                                    .padding(.top)
                                    .padding(.horizontal)
                                
                                Button {
                                    
                                } label: {
                                    Text("짱구 다시보기 GO")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.vertical)
                                        .frame(width: UIScreen.main.bounds.width - 150)
                                        
                                        .background(Color.orange)
                                        .cornerRadius(10)
                                    
                                    
                                }

                                
                                
                            }
                            
                            
                        }
                    }
   
                }
                .background(Color.green.opacity(0.2))
                .background(Color.white)
                
            }
            
        }
        .background(Color.yellow.opacity(0.25))
    }
}
