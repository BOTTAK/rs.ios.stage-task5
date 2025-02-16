import Foundation

class StockMaximize {

    
    func countProfit(prices: [Int]) -> Int {
            if prices.count == 0 || prices.count == 1 {
                return 0
            }
            
            var profit = 0
            var dayWhenCanSell = prices
            
            for i in 0..<prices.count - 1 {
                dayWhenCanSell.remove(at: 0)
                guard let maxPrice = dayWhenCanSell.sorted().last else {
                    return 0
                }
                if prices[i] < maxPrice{
                    profit += maxPrice - prices[i]
                }
            }
            return profit
        }
}
