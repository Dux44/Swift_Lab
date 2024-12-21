// Структура моделі відео
struct Video {
    let title: String
    let views: Int
    let url: String
}

// Функція для генерації фіктивних відео
func generateSampleVideos() -> [Video] {
    return [
        Video(title: "Swift Programming", views: 5000, url: "https://example.com/video1"),
        Video(title: "SwiftUI Basics", views: 3200, url: "https://example.com/video2"),
        Video(title: "iOS Development", views: 4500, url: "https://example.com/video3"),
        Video(title: "Xcode Tips", views: 2900, url: "https://example.com/video4"),
        Video(title: "Concurrency in Swift", views: 3400, url: "https://example.com/video5"),
        Video(title: "Swift for Beginners", views: 3800, url: "https://example.com/video6"),
        Video(title: "Mastering Swift", views: 4100, url: "https://example.com/video7"),
        Video(title: "Advanced iOS", views: 2200, url: "https://example.com/video8"),
        Video(title: "Swift and Combine", views: 3100, url: "https://example.com/video9"),
        Video(title: "Debugging in Xcode", views: 2700, url: "https://example.com/video10")
    ]
}

// Функція для виведення списку відео
func printVideos(videos: [Video]) {
    for (index, video) in videos.enumerated() {
        print("\(index + 1). Назва: \(video.title), Перегляди: \(video.views)")
    }
}

// Функція для пошуку відео за назвою
func searchVideos(by title: String, in videos: [Video]) -> [Video] {
    return videos.filter { $0.title.lowercased().contains(title.lowercased()) }
}

// Головна функція
func main() {
    let videos = generateSampleVideos()

    print("Вітаємо! Оберіть дію:")
    print("1. Показати всі відео")
    print("2. Знайти відео за назвою")

    if let choice = readLine() {
        switch choice {
        case "1":
            print("\nСписок відео:")
            printVideos(videos: videos)

        case "2":
            print("\nВведіть назву для пошуку:")
            if let searchQuery = readLine() {
                let results = searchVideos(by: searchQuery, in: videos)

                if results.isEmpty {
                    print("\nРезультати пошуку: Жодного відео не знайдено.")
                } else {
                    print("\nРезультати пошуку:")
                    printVideos(videos: results)
                }
            }

        default:
            print("\nНекоректний вибір. Спробуйте ще раз.")
        }
    }
}

// Запуск програми
main()