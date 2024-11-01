//
//  TaskGroupLimit.swift
//  ConcurrencyTests
//
//  Created by Сергей Лепинин on 01/11/2024.
//

import Foundation

//struct LoadingTask: Equatable {
//	let id: Int
//	let countTimer: Int
//}
//
//actor DataLoader {
//	private var loadingTasks: [LoadingTask] = []
//	private var loaderTask: Task<Void, Never>?
//
//	func enqueueTask(_ task: LoadingTask) async {
//		loadingTasks.append(task)
//
//		await startLoadIfNeeded()
//	}
//
//	func startLoadIfNeeded() async {
//		guard loaderTask == nil else { return }
//
//		loaderTask = Task {
//			await withTaskGroup(of: Void.self) { taskGroup in
//				while let task = cutFirst() {
//					taskGroup.addTask {
//						// some work with load from url
//						try? await Task.sleep(for: .seconds(task.countTimer))
//						print("DONE task id \(task.id) with counter \(task.countTimer)")
//					}
//				}
//			}
//
//			clearLoader()
//		}
//	}
//
//	func cutFirst() -> LoadingTask? {
//		guard !loadingTasks.isEmpty else { return nil }
//		return loadingTasks.removeFirst()
//	}
//
//	func clearLoader() {
//		loaderTask = nil
//	}
//}
//
//func startTaskGroupLimit() {
//	Task {
//		var tasks: [LoadingTask] = []
//
//		for i in 0..<12 {
//			tasks.append(.init(id: i, countTimer: Int.random(in: 3..<5)))
//		}
//
//		let loader = DataLoader()
//
//		for task in tasks {
//			await loader.enqueueTask(task)
//		}
//	}
//}
