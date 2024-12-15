import Foundation



//for x in 0..<100 {
//     print(x)
//}



let myArray = ["Alpha", "Betta", "Gamma", "Delta", "Epsilon"]


var secondArray: [String] = []


for item in myArray {
    print(item)
    
    if item == "Gamma" {
        secondArray.append(item)
    }
}

print(secondArray)



struct LessonModel {
    let title: String
    let isFavorite: Bool
}


let allLessons: [LessonModel] = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: false),
    LessonModel(title: "Lesson 3", isFavorite: true),
    LessonModel(title: "Lesson 4", isFavorite: false),
  ]


var favoriteLesson: [LessonModel] = []

for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLesson.append(lesson)
    }
}

print(favoriteLesson)


for (index, lesson) in allLessons.enumerated() {
    
    if index == 1 {
//        break
        continue
    }
    
    
    print("index: \(index) || lesson: \(lesson)")
}



