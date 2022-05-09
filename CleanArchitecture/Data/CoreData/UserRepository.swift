//
//  UserRepository.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 1/14/19.
//  Copyright © 2019 Sun Asterisk. All rights reserved.
//

import MagicalRecord
import RxSwift

protocol UserRepository: CoreDataRepository {
   
}

extension UserRepository where Self.ModelType == User, Self.EntityType == CDUser {
    func getUsers() -> Observable<[User]> {
        return all()
    }

    func add(dto: AddUserDto) -> Observable<Void> {
        guard let users = dto.users else { return Observable.empty() }
        return addAll(users)
    }
    
    static func map(from item: User, to entity: CDUser) {
        entity.id = item.id
        entity.name = item.name
        entity.gender = Int64(item.gender.rawValue)
        entity.birthday = item.birthday
    }
    
    static func item(from entity: CDUser) -> User? {
        guard let id = entity.id else { return nil }
        return User(
            id: id,
            name: entity.name ?? "",
            gender: Gender(rawValue: Int(entity.gender)) ?? Gender.unknown,
            birthday: entity.birthday ?? Date()
        )
    }
}
