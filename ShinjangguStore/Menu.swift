//
//  Menu.swift
//  ShinjangguStore
//
//  Created by 이윤지 on 2023/07/11.
//

import SwiftUI

struct Menu : Identifiable {
    
    var id : Int
    var image : String
    var title : String
    var price : String
    var text : String
    
}


var menus = [
Menu(id: 0, image: "001", title: "액션가면", price: "$7천원", text: "나는 액션가면!! 하하하"),
Menu(id: 1, image: "002", title: "짱구 체육복", price: "$1만3천원", text: "유치원에서 체육복을 입었어요"),
Menu(id: 2, image: "003", title: "흰둥이 집", price: "$3천원", text: "흰둥이의 새 집이에요"),
Menu(id: 3, image: "004", title: "초코비", price: "$2만원", text: "초코비가 제일 좋아"),
Menu(id: 4, image: "005", title: "짱구 이불", price: "$5천원", text: "뒹굴뒹굴 이불이에요~~"),
Menu(id: 5, image: "006", title: "액션가면 팬티", price: "$2만원", text: "이것만 입으면 나도 액션가면!!"),
Menu(id: 6, image: "007", title: "부리부리몬", price: "$5천원", text: "가랏!! 부리부리몬~~!!"),
Menu(id: 7, image: "008", title: "건담로봇", price: "$5천원", text: "나는 건담~~로봇!"),
Menu(id: 8, image: "009", title: "맹구의 눈물", price: "$1억원", text: "뜨거운 남자 맹구의 눈물"),
Menu(id: 9, image: "010", title: "피망", price: "$무료나눔", text: "무료나눔 합니다~! 아무나 얼른 가져가세욧!"),


]
