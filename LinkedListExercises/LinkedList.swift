//
//  LinkedList.swift
//  LinkedListExercises
//
//  Created by C4Q  on 10/24/17.
//  Copyright © 2017 C4Q . All rights reserved.
//
import Foundation

public class Node<T: Equatable>: Equatable {
    public static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return lhs.key == rhs.key
    }
    
    var key: T
    var next: Node<T>?
    init(key: T) {
        self.key = key
    }
}


public class LinkedList<T: Equatable> {
    var head: Node<T>?
    func printAllKeys() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode?.next
        }
    }
    
    //var count: Int {return 0}
    
    var count: Int {
        var count = 0
        var currentNode = head
        while currentNode != nil {
            currentNode = currentNode?.next
            count += 1
        }
        return count
        
    }
    
    
    
    //func append(element newKey: T) {}
    func append(element newKey: T) {
        if head == nil {
            head = Node(key: newKey)
            return
        }
        var currentNode = head
        
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(key: newKey)
    }
    
    
    //func getNode(at index: Int) -> Node<T>? {return nil}
    func getNode(at index: Int) -> Node<T>? {
        var counter = 0
        var currentNode = head
        
        while counter < index {
            counter += 1
            currentNode = currentNode?.next
        }
        return currentNode
    }
    
    //func contains(element targetKey: T) -> Bool {return false}
    func contains(element targetKey: T) -> Bool {
        var currentNode = head
        while currentNode != nil {
            if currentNode!.key == targetKey { return true }
            currentNode = currentNode?.next
        }
        return false
    }
    
    //func equals(otherList: LinkedList<T>) -> Bool {return true}
    func equals(otherList: LinkedList<T>) -> Bool {
        var currentNode = head
        var currentSecondNode = otherList.head
        
        while currentNode != nil && currentSecondNode != nil && currentNode?.key == currentSecondNode?.key {
            currentNode = currentNode?.next
            currentSecondNode = currentSecondNode?.next
        }
        
        return currentNode == nil && currentSecondNode == nil
        
    }
    
    
    //func toArr() -> [T] {return Array<T>()}
    func toArr() -> [T] {
        var arr: Array<T> = []
        var currentNode = head
        while currentNode != nil {
            arr.append(currentNode!.key)
            currentNode = currentNode?.next
        }
        return arr
    }
    
    
    //func reversed() -> LinkedList<T> {return LinkedList<T>()}
    func reversed() -> LinkedList<T> {
        let reversedList = LinkedList<T>()
        var currentNode = head
        while currentNode != nil {
            reversedList.head = currentNode
            currentNode = currentNode?.next
        }
        return reversedList
    }
    
    func removeAll() {}
    
    //Challenge Questions
    func removeDuplicatesFromSortedList() {}
    
    static func mergeSortedLists(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
        return LinkedList<T>()
    }
}
