//
//  Animal& Web.swift
//  project
//
//  Created by 백대홍 on 2023/02/19.
//

import SwiftUI

struct Animal_Web: View {
    var body: some View {
        NavigationStack {
            Text("키우고 싶으신 동물을 찾으셨나요?")
                .font(.title.bold())
                .padding(.leading)
            Text("이제 더 알아 볼 시간 입니다. 동물 백과 사전과 추천 사이트를 통해 결과에서 확인한 동물에 대해 더 공부해보세요.")
                .padding()
            Image("onboarding4")
                .resizable()
                .frame(width: 200, height: 200)
            
            NavigationLink(destination: AnimalEncyclopedia()) {
                Text("동물 백과 사전")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
            .background(Color.yellow)
            .cornerRadius(10)
            .padding()
            
            
            NavigationLink(destination: RecommendedSites()) {
                Text("추천 사이트")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
            .background(Color.yellow)
            .cornerRadius(10)
            .padding()
            .navigationTitle("더 알아보기")
        }
        
    }
}


struct Animal_Web_Previews: PreviewProvider {
    static var previews: some View {
        Animal_Web()
    }
}
