//
//  CommentViewModel.swift
//  CommentMVVM
//
//  Created by APPLE on 09/08/24.
//

import Foundation
import Combine

class CommentViewModel: ObservableObject{
    @Published var myComments: [Comment] = []
    
    func fetchAllComments(completion: @escaping([Comment])-> Void) {
        let str = "https://jsonplaceholder.typicode.com/comments"
        let url = URL(string: str)
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if error == nil {
                do {
                    self.myComments = try JSONDecoder().decode([Comment].self, from: data!)
                    completion(self.myComments)
                }catch let error {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
