#!/bin/sh
if [[ "$1" == "h" || "$1" == "help" ]];then
    echo "usage: $0 [sandbox] < receipt_data_file"
    echo "if has a sandbox option , using sandbox env verify ..."
    exit 1
fi

read receipt

receipt="{\"receipt-data\":\"$receipt\"}"
url=https://buy.itunes.apple.com/verifyReceipt
if [[ "$1" == "sandbox" ]];then
    url=https://sandbox.itunes.apple.com/verifyReceipt
fi
echo "using url:$url"
#echo $receipt
curl -d $receipt $url
echo -e "\n==================================================\n"


