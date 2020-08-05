{-# OPTIONS_GHC -F -pgmF inlitpp #-}

# Test document

Hello from my test document!

```haskell hide top
import Data.Time
```

```haskell do

now <- getCurrentTime

```

```haskell do

let later :: UTCTime
    later = addUTCTime 100 now

```

```haskell top

f :: Int -> Int
f x = x - 7

```

```haskell eval

f (2+2)

```

```haskell eval

[100000::Int .. ]

```

and lets have another question

```haskell eval

(now, later)

```

Goodbye!
