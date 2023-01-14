//
//  QandA.swift
//  SeeForMe
//
//  Created by Alanood Al Alsheikh on 16/01/2023.
//

import SwiftUI


struct QandA: View {
    @StateObject fileprivate var viewModel = QnaViewModel()
    @State var searchQuery = ""
    var body: some View {
        NavigationStack {
                    List{
                        ForEach(viewModel.QnAs.filter{$0.question.contains(searchQuery) || searchQuery.isEmpty}){ question in
                            NavigationLink {
                                Text("\(question.question)")
                                .font(.title)
                                .fontWeight(.bold)
                                Text("\(question.answer)")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()
                            Spacer()
                        } label: {
                            Text("\(question.question)")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("SecondaryColor"))
                        }
                        }
                    }//.searchable(text: $searchQuery)
                        .scrollContentBackground(.hidden)
                        .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("FAQ").font(.largeTitle).fontWeight(.bold)
                    }
                }
        }
        
    }
    
//    var searchResults: [QnA] {
//        if searchQuery.isEmpty {
//            return viewModel.QnAs
//        } else {
//            if let question=viewModel.QnAs.filter(where: {$0.question == searchQuery}){
//                return question
//            }
//        }
//    }
}
    
    struct QandA_Previews: PreviewProvider {
        static var previews: some View {
            QandA()
        }
    }
    

