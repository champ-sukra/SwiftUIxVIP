//
//  ProfileWorker.swift
//  SwiftUIxVIP
//
//  Created by Chaithat Sukra on 13/8/2566 BE.
//

import Foundation

protocol ProfileWorkerInterface {
    func getSomething(body: Any?,
                      completion: @escaping (Result<Any, Error>) -> ())
}

final class ProfileWorker: ProfileWorkerInterface {
    func getSomething(body: Any?,
                      completion: @escaping (Result<Any, Error>) -> ()) {
        let mockData = [
                    "first_name": "ccc",
                    "last_name": "ccc",
                    "phone_no": "0432279245",
                    "linkedin": "www.linkedin.com/in/champ-sukra-491aa994",
                    "summary": "Boasting a 12-year career across the FinTech and DigiTech sectors in Australia and Thailand, I've led and actively participated in Agile digital transformations and DevOps processes. My proficiency in crafting scalable solutions using microservices, clean architectures, and fostering high- performance teams were crucial in the successful deployment of mobile banking and online shopping platforms. As an esteemed recipient of the Australian GTI Visa, my resolute commitment to innovation and excellence is globally recognized."
                ]
        
        //TODO: replace mock data with resources getting from API or CoreData
        completion(.success(mockData))
    }
}
