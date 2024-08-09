//
//  CommentView.swift
//  CommentMVVM
//
//  Created by APPLE on 09/08/24.
//

import SwiftUI

struct CommentView: View {
    @State var comments: [Comment] = []
    var body: some View {
        List(comments) { comment in
            VStack {
                Text(comment.name)
                    .bold() 
                Text(comment.email)
                    .foregroundColor(.blue)
                Text(comment.body)
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(.red)
            }
        }.onAppear(){
            CommentViewModel().fetchAllComments{myComments in
                comments = myComments
            }
        }
    }
}

#Preview {
    CommentView()
}
