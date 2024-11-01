//
//  TaskStructuredResult.swift
//  ConcurrencyTests
//
//  Created by Сергей Лепинин on 01/11/2024.
//

import Foundation

//func start() {
//	let task = Task {
//		await startSomeWork()
//	}
//
//	task.cancel()
//}
//
//func startSomeWork() async {
//	let innerTask = Task {
//		await fetchData(for: 2)
//	}
//
//	let data2 = await withTaskCancellationHandler {
//		await innerTask.value
//	} onCancel: {
//		innerTask.cancel()
//	}
//
//	let data = await fetchData(for: 1)
//	await processData(data)
//}
//
//func fetchData(for id: Int) async -> [String] {
//	try? await Task.sleep(for: .seconds(3))
//	if Task.isCancelled {
//		print("fetching canceled for id \(id)")
//		return []
//	}
//	print("Data fetched for id \(id)")
//	return []
//}
//
//func processData(_ data: [String]) async {
//	try? await Task.sleep(for: .seconds(3))
//	if Task.isCancelled {
//		print("processing canceled")
//		return
//	}
//	print("Data processed")
//}
