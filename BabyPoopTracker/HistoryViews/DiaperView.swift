//
//  DiaperView.swift
//  BabyPoopTracker
//
//  Created by Mike  Van Amburg on 2/12/20.
//  Copyright © 2020 Mike Van Amburg. All rights reserved.
//

import SwiftUI

struct DiaperView: View {
    var dirty:Int32 = 1
    var wet:Int32 = 1
    var date:Date
    
    
    var body: some View{
        
        HStack{
            VStack(alignment: .leading){
                if dirty == 1 && wet == 1 {
                    HStack{
                        Text("Date: \(date)")
                        Spacer()
                        HStack{
                            VStack{
                                Image("wetdiaper")
                                    .resizable()
                                    .scaledToFit()
                               
                            }
                            VStack {
                                Image("dirtydiaper")
                                    .resizable()
                                    .scaledToFit()
            
                            }
                        }
                        
                    }.padding()
                    
                }
                else if dirty == 1 && wet == 0{
                    HStack{
                        Text("Date: \(date)")
                        Spacer()
                        VStack{
                            Image("dirtydiaper")
                                .resizable()
                                .scaledToFit()
                            }
                        }.padding()
                }
                else{
                    HStack{
                    Text("Date: \(date)")
                    Spacer()
                    VStack{
                        Image("wetdiaper")
                            .resizable()
                            .scaledToFit()
                        }
                    }.padding()
                }
                
            }
        }
    }
}

struct DiaperView_Previews: PreviewProvider {
    static var previews: some View {
        DiaperView(date: Date())
    }
}
