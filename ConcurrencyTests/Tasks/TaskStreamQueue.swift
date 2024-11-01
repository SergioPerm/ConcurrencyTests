//
//  TaskStreamQueue.swift
//  ConcurrencyTests
//
//  Created by Сергей Лепинин on 01/11/2024.
//

import Foundation

public final class FIFOQueue: Sendable {
	private let tasksContinuation: AsyncStream<@Sendable () async -> Void>.Continuation

	public init(priority: TaskPriority? = nil) {
		let (taskStream, tasksContinuation) = AsyncStream<@Sendable () async -> Void>.makeStream()
		self.tasksContinuation = tasksContinuation

		Task.detached(priority: priority) {
			for await task in taskStream {
				await task()
			}
		}
	}

	public func enqueue(_ task: @escaping @Sendable () async -> Void) {
		tasksContinuation.yield(task)
	}
}

func receiveEvent() {
	let queue = FIFOQueue()
	let eventProcessor
	
	queue.enqueue {
		await eventProcessor.sendEvent()
	}
}
