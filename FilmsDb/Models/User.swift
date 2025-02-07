//
//  User.swift
//  FilmsDb
//
//  Created by Nastassia on 18.10.24.
//


import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
