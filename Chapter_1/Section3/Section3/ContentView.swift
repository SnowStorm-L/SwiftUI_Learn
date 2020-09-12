//
//  ContentView.swift
//  Section3
//
//  Created by L on 2020/9/10.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Identifiable id
    // @State, @Binding or @ObservedObject
    // 保证唯一性 和 不可变性 (不然会造成 NavigationLink 失效, 页面多次进入, 或者进入后立刻返回)
    // https://stackoverflow.com/questions/58302913/swiftui-navigationlink-pops-immediately-if-used-within-foreach/58305884#58305884
    
    // 复现方法
    // 在收起 展开 2个状态下, 都进入详情页, 点击选中,反选.  多重复操作几次
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showSelectedOnly) {
                    Text("Selected only")
                }
                ForEach(userData.dataSource.filter { !userData.showSelectedOnly || $0.isSelected }) { model in
                    NavigationLink(destination: DetailView(model: model)) {
                        Cell(model: model)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserData())
    }
}
