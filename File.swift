//
//  File.swift
//  therm
//
//

import Foundation


let IP_ADDRESS = "192.168.0.120"
let PORT: UInt16 = 30444

let server = Server(port: port)
server.start()


RunLoop.current.run()

} else {
  let stderr = FileHandle.standardError
  let message = "Requires macOS 10.14 or newer"
  stderr.write(message.data(using: .utf8)!)
  exit(EXIT_FAILURE)
}


//
//import NIO
//import Network
//import CoreFoundation
//
//func acceptConnection(socket: CFSocket!, type: CFSocketCallBackType, address: CFData!, data: UnsafePointer<Void>, info: UnsafeMutablePointer<Void>)
//{
//    // Accept connection and stuff later
//}
//
//class EchoServer : NSObject //NSStreamDelegate
//{
//    private var serverSocket: CFSocket?
//
//    func start()
//    {
//        self.serverSocket = CFSocketCreate(kCFAllocatorDefault, AF_INET, SOCK_STREAM, 0, 2, acceptConnection, nil)
//    }
//}
////
//import UIKit
//import NIOCore
//import SocketIO
//import NIOPosix
//import NIOTLS
//import NIOSSL
//import NIO
//import NIOTransportServices
//
//class ViewController: UIViewController {
//    var group = NIOTSEventLoopGroup()
//    var server: Channel?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.runServer().whenSuccess {
//            self.runClient()
//        }
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        try? self.server?.close().wait()
//        try? self.group.syncShutdownGracefully()
//    }
//
//    func runClient() {
//        NIOTSConnectionBootstrap(group: self.group)
//            .connect(host: "localhost", port: 8089)
//            .whenSuccess { client in
//                client.writeAndFlush(ByteBuffer(string: "hello")).whenComplete { _ in
//                    client.close(promise: nil)
//                }
//            }
//    }
//
//    func runServer() -> EventLoopFuture<Void> {
//        final class PrintEverythingReceivedHandler: ChannelInboundHandler {
//            typealias InboundIn = ByteBuffer
//
//            func channelRead(context: ChannelHandlerContext, data: NIOAny) {
//                let buffer = self.unwrapInboundIn(data)
//
//                print(String(buffer: buffer))
//            }
//        }
//
//        return NIOTSListenerBootstrap(group: self.group)
//            .serverChannelOption(ChannelOptions.socketOption(.so_reuseaddr), value: 1)
//
//            .childChannelInitializer { channel in
//                channel.pipeline.addHandler(PrintEverythingReceivedHandler())
//            }
//            .bind(host: "localhost", port: 8089)
//            .map { channel in
//                self.server = channel
//            }
//    }
//}
//
//import Foundation
//import UIKit
//import NIO
//
//let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
//let client = try ClientBootstrap(group: group)
//    .connect(host: "192.168.0.120", port: 30444)
//    //.wait() // This makes it "blocking", ie. synchronous.
//
//let client.writeAndFlush(ByteBuffer(string: "hello")).flatMap {
//    client.close()
//}//.wait()


//let IP_ADDRESS = "192.168.0.120"
//let PORT: UInt16 = 30444
//let clientSocket = try Socket.create(family: .inet, type: .datagram, proto: .udp)
//try clientSocket.connect(to: IP_ADDRESS, port: PORT)
//try clientSocket.write(from: "Bind HTPA series device".data(using: .utf8)!)
//let data = try clientSocket.read(into: 1024)
//print(String(data: data, encoding: .utf8)!)
//try clientSocket.write(from: "K".data(using: .utf8)!)
//var data = Data()
//for _ in 0..<14 {
//    let newData = try clientSocket.read(into: 1400)
//    data.append(newData)
//}
//let newData = try clientSocket.read(into: 560)
//data.append(newData)
