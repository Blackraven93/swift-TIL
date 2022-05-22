import Foundation
import UIKit

//listPhotos(inGallery: "Summer Vacation") { photoNames in
//    let sortedNames = photoNames.sorted()
//    let name = sortedNames[0]
//    downloadPhoto(named: name) { photo in
//        show(photo)
//    }
//}

let array: [String]  = ["raven", "bird", "woodpecker"]

array.forEach {
    print($0)
}


// func listPhotos(inGallery name: String) async -> [String] {}

// let photoNames = await listPhotos(inGallery: "Summer vacation")

//func listPhotos(inGallery name: String) async throws -> [String] {
//    try await Task.sleep(nanoseconds: 2 * 1_000_000_000)  // Two seconds
//    return ["IMG001", "IMG99", "IMG0404"]
//}
//
//listPhotos(inGallery: "raven")

//let handle = FileHandle.standardInput
//for try await line in handle.bytes.lines {
//    print(line)
//}
//
//let firstPhoto = await downloadPhoto(named: photoNames[0])
//let secondPhoto = await downloadPhoto(named: photoNames[1])
//let thirdPhoto = await downloadPhoto(named: photoNames[2])
//
//let photos = [firstPhoto, secondPhoto, thirdPhoto]
//show(photos)

func doAsyncWork() async {
    print("Doing async work")
}

func doRegularWork() {
    Task {
        await doAsyncWork()
    }
}

doRegularWork()

//func listPhotos(inGallery name: String) async throws -> [String] {
//    try await Task.sleep(nanoseconds: 2 * 1_000_000_000)
//    return ["IMG001", "IMG99", "IMG0404"]
//}
//
//func asyncWorkTest() {
//    Task {
//        await listPhotos(inGallery: "raven")
//    }
//}

await withTaskGroup(of: Data.self) { taskGroup in
    let photoNames = await listPhotos(inGallery: "Summer Vacation")
    for name in photoNames {
        taskGroup.addTask { await downloadPhoto(named: name) }
    }
}

// 멘토나 세션 때 물어볼 것

