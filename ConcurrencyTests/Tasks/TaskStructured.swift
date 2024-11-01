//
//  TaskStructured.swift
//  ConcurrencyTests
//
//  Created by Сергей Лепинин on 01/11/2024.
//

import Foundation

func start() {
	let task = Task {
		await startSomeWork()
	}

	task.cancel()
}

func startSomeWork() async {
	let task = Task {
		await fetchData(for: 2)
	}

//	async let data = await fetchData(for: 2)
//	async let data2 = await fetchData(for: 3)
//
//	await withTaskGroup(of: Void.self) { taskGroup in
//		taskGroup.addTask {
//			
//		}
//
//		taskGroup.addTask {
//			
//		}
//	}

	let _ = await withTaskCancellationHandler {
		await task.value
	} onCancel: {
		task.cancel()
	}

	let data = await fetchData(for: 1)
	await processData(data)
}

func fetchData(for id: Int) async -> [String] {
	try? await Task.sleep(for: .seconds(3))
	if Task.isCancelled {
		print("fetching canceled for id \(id)")
		return []
	}
	print("Data fetched for id \(id)")
	return []
}

func processData(_ data: [String]) async {
	try? await Task.sleep(for: .seconds(3))
	if Task.isCancelled {
		print("processing canceled")
		return
	}
	print("Data processed")
}
