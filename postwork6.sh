#CONSULTA de transacciones de cuantos y cuales Bancos Emisores son las transacciones de GestoPago-AforeMovil
[
    {
        '$match': {
            'userId': 'GestoPago-AforeMovil'
        }
    }, {
        '$group': {
            '_id': '$BancoEmisor', 
            'total': {
                '$sum': 1
            }
        }
    }, {
        '$sort': {
            'total': -1
        }
    }, {
        '$count': 'BancoEmisor'
    }
]
