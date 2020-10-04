*** Settings ***
Library          RequestsLibrary
Library          Collections
Test Setup       Create Session              ${toy_store}    ${URL}
Test Teardown    Delete All Sessions
Resource         ./checkoutResource.robot

*** Test Cases ***
Checkout Diner Set
    Checkout Product    2    43 Piece dinner Set    1    14.95    วันเวลาที่ชำระเงิน 1/3/2020 13:30:00 หมายเลขคำสั่งซื้อ 8004359104 คุณสามารถติดตามสินค้าผ่านช่องทาง Kerry หมายเลข 1785261900

Checkout Bicyce
    Checkout Product    1    Balance Training Bicycle    2    241.90    วันเวลาที่ชำระเงิน 1/3/2020 13:30:00 หมายเลขคำสั่งซื้อ 8004359105 คุณสามารถติดตามสินค้าผ่านช่องทาง Kerry หมายเลข 1785261901
