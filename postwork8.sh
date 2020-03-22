1. Realizar una conexión desde Compass a la base de datos creada en MongoDB Atlas.
mongodb+srv://Ross:<password>@rosslunadb-2f6ip.mongodb.net/test 

2. Analizar la estructura de los datos para conocer el contexto y poder formular preguntas.

  PROCESO GIT BASH PARA SUBIR JSON A MongoDB Compass:

  $ cd "G:\Mi unidad\BEDU\Introduccion_a_base_de_datos"

  $ file.exe contratacionesabiertas.json
  contratacionesabiertas.json: UTF-8 Unicode text, with very long lines

  $ dos2unix.exe  "contratacionesabiertas.json"
  dos2unix: converting file contratacionesabiertas.json to Unix format...


3. Después, formular preguntas sobre el conjuntos de datos
3.1 Agrupar por pais y ordenar de mayor a menor


[
    {
        '$group': {
            '_id': '$address.country', 
            'pais': {
                '$sum': 1
            }
        }
    }, {
        '$sort': {
            'pais': -1
        }
    }
]
3.2 costo habitaciones menor a 100, calificacio mayor a 50 que cyuenten con internet y elevador... España

{
	"price": {
		"$lte": 100
	},
	"address.country_code": "ES",
	"review_scores.review_scores_rating": {
		"$gte": 50
	},
	"$and": [{
			"amenities": {
				"$in": ["Elevator", "Step-free access"]
			}
		},
		{
			"amenities": {
				"$in": ["Wifi", "Internet"]
			}
		}
	]
}


3.3 Obtener todas las publicaciones que tengan 50 o más comentarios, que la valoración sea mayor o igual a 80, que cuenten con conexión a Internet vía cable y estén ubicada en Brazil.

[
  {
    '$match': {
      'number_of_reviews': {
        '$gte': 50
      },
      'review_scores.review_scores_rating': {
        '$gte': 80
      },
      'amenities': new RegExp('Ethernet connection'),
      'address.country_code': 'BR'
    }
  }, {
    '$count': 'total'
  }
]



4. Por cada pregunta, realizar las consultas o ajustes necesarios a los datos para poder responderlas.

4.1 CAMBIAR FECHA 


[
  {
    '$addFields': {
      'MONTO_DE_CONTRATO': {
        '$toDecimal': '$MONTO_DE_CONTRATO'
      }, 
      'FECHA_INICIO_CONTRATO': {
        '$concat': [
          {
            '$substr': [
              '$FECHA_INICIO_CONTRATO', 0, 6
            ]
          }, '20', {
            '$substr': [
              '$FECHA_INICIO_CONTRATO', 6, 7
            ]
          }
        ]
      }
    }
  }, {
    '$addFields': {
      'FECHA_INICIO_CONTRATO': {
        '$dateFromString': {
          'dateString': '$FECHA_INICIO_CONTRATO', 
          'format': '%d/%m/%Y'
        }
      }
    }
  }, {
    '$out': 'contrataciones2'
  }
]