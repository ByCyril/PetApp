//
//  ContentView.swift
//  Shared
//
//  Created by Cyril Garcia on 1/25/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        Text("Hello, World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
