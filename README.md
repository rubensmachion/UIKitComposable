# UIKitComposable

The **UIKitComposable** is simply a set of protocols and implementations aimed at facilitating interface development using **UIKit**.

Feel free to open pull requests and give suggestions.



### Example
```
    private let someVerticalStack = VStackView(
        alignment: .fill,
        spacing: 10.0 , [
            UIView() // Orange View
                .backgroundColor(.orange)
                .cornerRadius(10.0)
                .setup {
                    $0.layer.borderWidth = 1.0
                    $0.layer.borderColor = UIColor.gray.cgColor
                },
            
            UIView()
                .backgroundColor(.purple),
            
            UIView()
                .backgroundColor(.red)
        ])
        .distribution(.fillEqually)

```

