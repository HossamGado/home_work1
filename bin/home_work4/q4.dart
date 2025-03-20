// - Declares a `Map<String, int>` where keys are fruit names and values are their
// prices.
// - Implements a function `getPrice(String fruitName)` that returns the price of a
// given fruit.
// - If the fruit is not found, return -1.
// Call the function inside `main()` and print the result.

void main(){
  Map<String,int>fruits={
    "apple":30,
    "Banana":20,
    "watermelon":25,
  };
 int finalPrice= getPrice("apple", fruits);
 print(finalPrice);
}
int getPrice(String fruitName, Map<String,int>fruits){
  return fruits[fruitName]??-1;
}

