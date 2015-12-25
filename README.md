# apple_receipt_verify
apple pay receipt verify tools


##install##
1. curl
2. bash


##usage##
```
./verify_receipt.sh help
usage: ./verify_receipt.sh [sandbox] < receipt_data_file
if has a sandbox option , using sandbox env verify ...

./verify_receipt.sh < receipt.data
using url:https://buy.itunes.apple.com/verifyReceipt
{"status":21007}
```
