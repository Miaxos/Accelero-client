//
//  ViewController.swift
//  Accellero
//
//  Created by Anthony GRIFFON on 16/11/2017.
//  Copyright © 2017 Anthony GRIFFON. All rights reserved.
//

import UIKit
import SocketIO

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func callback() {
        let socket = SocketIOManager.sharedInstance.getSocket();
        socket.emit("message", [
            "x": MotionHelper.sharedInstance.motionManager.accelerometerData?.acceleration.x,
            "y": MotionHelper.sharedInstance.motionManager.accelerometerData?.acceleration.y,
            "z": MotionHelper.sharedInstance.motionManager.accelerometerData?.acceleration.z,
            ]);
    }

    @IBAction func startButton(_ sender: UIButton) {
        // Start socket
        let socket = SocketIOManager.sharedInstance.getSocket();
        
//        socket.emit("message", ["x": 12]);
//        socket.emit("message", "test");

        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(callback), userInfo: nil, repeats: true)
        
        
        print("Start socket 🚀");
    }

    

}

