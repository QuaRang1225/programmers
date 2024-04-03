import UIKit


func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var visited = [Bool](repeating: false, count: dungeons.count)
    var result = 0
    
    func dfs(_ fatigue: Int,_ cnt:Int) {
        result = max(result, cnt)
        (0..<dungeons.count).forEach{ i in
            if  !visited[i] && fatigue >= dungeons[i][0]{
                visited[i] = true
                dfs(fatigue - dungeons[i][1],cnt + 1)
                visited[i] = false
            }
        }
    }
    
    dfs(k,result)
    return result
}

print(solution(80, [[80,20],[50,40],[30,10]]    ))



