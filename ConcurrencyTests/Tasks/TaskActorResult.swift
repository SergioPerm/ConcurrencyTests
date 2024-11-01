//
//  TaskActorResult.swift
//  ConcurrencyTests
//
//  Created by Сергей Лепинин on 01/11/2024.
//

import Foundation

//func startProcessEvents() {
//	let eventProcessor = EventProcessor()
//
//	let event1 = Event(id: 1)
//	let event2 = Event(id: 2)
//
//	Task {
//		await eventProcessor.processEvent(event1)
//	}
//
//	Task {
//		await eventProcessor.processEvent(event1)
//	}
//
//	Task {
//		await eventProcessor.processEvent(event2)
//	}
//}
//
//struct Event: Hashable {
//	let id: Int
//}
//
//actor EventProcessor {
//	private var processedEvents: Set<Event> = []
//
//	private var eventTasks: [Event: Task<Void, Never>] = [:]
//
//	func processEvent(_ event: Event) async {
//		if let eventTask = eventTasks[event] {
//			await eventTask.value
//			return
//		}
//
//		let eventTask = Task {
//			print("Start process event with id \(event.id)")
//			await someHardWork(for: event)
//			processedEvents.insert(event)
//			eventTasks[event] = nil
//		}
//
//		eventTasks[event] = eventTask
//	}
//
//	func someHardWork(for event: Event) async {
//		let task = Task {
//			try? await Task.sleep(for: .seconds(10))
//			print("Finish process event with id \(event.id)")
//		}
//
//		await task.value
//	}
//}
