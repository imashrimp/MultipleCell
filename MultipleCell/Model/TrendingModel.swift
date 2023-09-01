//
//  TrendingModel.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import Foundation

struct TrendingModel: Codable {
    let results: [Results]
}

struct Results: Codable {
    let id : Int
    let title: String? //영화 제목
    let name: String? //드라마 제목, 사람 이름
    let media_type: String //이거를 열거형으로 처리해보자 그래야 cellForRowAt에서 switch문 사용해서 분기처리 하기가 편함.
    let poster_path: String?
    let release_date: String?
    let gender: Int? // 성별
    let known_for_department: String? //역할 => 배우, 제작진의 느낌...?
}
