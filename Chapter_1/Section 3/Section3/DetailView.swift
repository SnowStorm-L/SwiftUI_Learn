//
//  DetailView.swift
//  Section3
//
//  Created by L on 2020/9/10.
//  Copyright © 2020 L. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var userData: UserData
    
    var model: Model
    
    var modelIndex: Int {
        userData.dataSource.firstIndex { $0.id == model.id }!
    }
    
    var body: some View {
        HStack {
            Text("\(model.number)")
            Button(action: {
                self.userData.dataSource[self.modelIndex].isSelected.toggle()
            }) {
                if self.userData.dataSource[self.modelIndex].isSelected {
                    Image(systemName: "star.fill").foregroundColor(Color.yellow)
                } else {
                    Image(systemName: "star").foregroundColor(Color.gray)
                }
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(model: Model())
    }
}
