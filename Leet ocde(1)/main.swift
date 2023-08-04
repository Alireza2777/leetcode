//
//  main.swift
//  Leet ocde(1)
//
//  Created by Alireza Karimi on 2023-08-03.
//

import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?

    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    if root == nil || root === p || root === q {
        return root
    }

    let leftLCA = lowestCommonAncestor(root?.left, p, q)
    let rightLCA = lowestCommonAncestor(root?.right, p, q)

    if leftLCA != nil && rightLCA != nil {
        return root
    }

    return leftLCA ?? rightLCA
}


