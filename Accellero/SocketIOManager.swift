//
//  SocketIOManager.swift
//  Accellero
//
//  Created by Anthony GRIFFON on 16/11/2017.
//  Copyright © 2017 Anthony GRIFFON. All rights reserved.
//

import SocketIO

class SocketIOManager: NSObject {
    static let sharedInstance = SocketIOManager()
    var manager = SocketManager(socketURL: URL(string: "http://localhost:8080")!, config: [.log(true), .compress])
    override init() {
        super.init()
        
        getSocket().on("test") { dataArray, ack in
            print(dataArray)
        }
        
    }
    
    func establishConnection() {
        getSocket().connect()
    }
    
    func closeConnection() {
        getSocket().disconnect()
    }
    
    func getSocket() -> SocketIOClient {
        return manager.defaultSocket;
    }
}
