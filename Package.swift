// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Telegraph",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Telegraph",
            targets: ["Telegraph"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Building42/CocoaAsyncSocket", .branch("master")),
        .package(url: "https://github.com/Building42/HTTPParserC", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Telegraph",
            dependencies: [
                "CocoaAsyncSocket",
                "HTTPParserC",
            ],
            path: "Sources",
            sources: [
                "Clients/WebSocketClientError.swift",
                "Clients/WebSocketClient.swift",
                "Clients/Client+Config.swift",
                "Transport/TCPSocket.swift",
                "Transport/TCPListener.swift",
                "Transport/Streams.swift",
                "Transport/DataStream.swift",
                "Transport/URI.swift",
                "Transport/Endpoint.swift",
                "Transport/TCPConnection.swift",
                "Security/KeychainError.swift",
                "Security/KeychainManager.swift",
                "Security/TLSConfig.swift",
                "Security/Certificate.swift",
                "Security/TLSPolicy.swift",
                "Security/CertificateIdentity.swift",
                "Security/SHA1.swift",
                "Server/Server+Config.swift",
                "Server/Server.swift",
                "Server/ServerDelegates.swift",
                "Protocols/WebSockets/Models/WebSocketParser.swift",
                "Protocols/WebSockets/Models/WebSocketError.swift",
                "Protocols/WebSockets/Models/WebSocketConfig.swift",
                "Protocols/WebSockets/Models/WebSocketMessage.swift",
                "Protocols/WebSockets/Models/HTTPHeader+WebSocket.swift",
                "Protocols/WebSockets/Models/WebSocketConnection.swift",
                "Protocols/WebSockets/Models/HTTPMessage+WebSocket.swift",
                "Protocols/WebSockets/Models/WebSocket.swift",
                "Protocols/WebSockets/Models/WebSocketMessage+Write.swift",
                "Protocols/WebSockets/Handlers/HTTPWebSocketHandler.swift",
                "Protocols/WebSockets/Handlers/WebSocketMessageHandler.swift",
                "Protocols/WebSockets/Handlers/WebSocketErrorHandler.swift",
                "Protocols/WebSockets/Handlers/WebSocketErrorDefaultHandler.swift",
                "Protocols/WebSockets/Handlers/WebSocketMessageDefaultHandler.swift",
                "Protocols/HTTP/Models/HTTPHeader+Common.swift",
                "Protocols/HTTP/Models/HTTPRequest.swift",
                "Protocols/HTTP/Models/HTTPResponse.swift",
                "Protocols/HTTP/Models/HTTPParser+Raw.swift",
                "Protocols/HTTP/Models/HTTPConfig.swift",
                "Protocols/HTTP/Models/HTTPMethod.swift",
                "Protocols/HTTP/Models/HTTPHeader.swift",
                "Protocols/HTTP/Models/HTTPMessage.swift",
                "Protocols/HTTP/Models/HTTPVersion.swift",
                "Protocols/HTTP/Models/HTTPError.swift",
                "Protocols/HTTP/Models/HTTPRequest+Host.swift",
                "Protocols/HTTP/Models/HTTPParser.swift",
                "Protocols/HTTP/Models/HTTPStatus.swift",
                "Protocols/HTTP/Models/HTTPConnection.swift",
                "Protocols/HTTP/Routing/Server+Routing.swift",
                "Protocols/HTTP/Routing/HTTPRoute.swift",
                "Protocols/HTTP/Routing/HTTPRouteHandler.swift",
                "Protocols/HTTP/Handlers/HTTPErrorDefaultHandler.swift",
                "Protocols/HTTP/Handlers/HTTPFileHandler.swift",
                "Protocols/HTTP/Handlers/HTTPRequestHandler.swift",
                "Protocols/HTTP/Handlers/HTTPErrorHandler.swift",
                "Helpers/Deprecations.swift",
                "Helpers/Extensions/FileManager+Ext.swift",
                "Helpers/Extensions/UInt+Ext.swift",
                "Helpers/Extensions/String+Ext.swift",
                "Helpers/Extensions/Array+Ext.swift",
                "Helpers/Extensions/NSRegularExpression+Ext.swift",
                "Helpers/Extensions/Data+Ext.swift",
                "Helpers/Extensions/URL+Ext.swift",
                "Helpers/RFC1123.swift",
                "Helpers/DispatchTimer.swift",
                "Helpers/SynchronizedSet.swift",
            ]
        )
    ]
)
