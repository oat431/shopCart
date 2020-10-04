*** Setting ***
Library    RequestsLibrary

*** Test Case ***
Checkout Diner Set
    Create Session    toy_store             http://localhost:8080 
    &{accept} =       Create Dictionary    Accept=application/json    
    ${productlist} =    Get Request    toy_store    /api/v1/product    headers=&{accept}
    Status Should Be    200                               ${productlist}
    Should Be equal     ${productlist.json()["total"]}    ${2}

    ${confirmPayment}=    To json    {"order_id":8004359122,"payment_type":"credit","type":"card_number":"4719700591590995","cvv":"752","expired_month":7,"expired_year":20,"card_name":"Karnwat Wongudom","total_price":14.95}