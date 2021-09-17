// https://leetcode.com/problems/two-sum/
public class TwoSum {
    public static func solution(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()

        for (index, num) in nums.enumerated() {
            dict[num] = index
        }

        for (index, num) in nums.enumerated() {
            if let foundIndex = dict[target - num],
               foundIndex != index {
                return [index, foundIndex]
            }
        }

        return []
    }
}

// https://leetcode.com/problems/reverse-integer/
public class ReverseInteger {
    public static func reverse(_ x: Int) -> Int {
        let signed = x < 0 ? -1 : 1
        var tmp = abs(x)
        var result = 0

        while tmp > 0 {
            let lastDigit = tmp % 10
            result += lastDigit
            tmp /= 10
            if tmp != 0 { result *= 10 }
        }

        if result > Int32.max { return 0 }
        return result * signed
    }
}
