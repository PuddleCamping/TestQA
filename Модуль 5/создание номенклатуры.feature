#language: ru

@tree

Функционал: Создание номенклатуры в цикле

Как Тестировщик я хочу
Потренироваться использовать циклы 
чтобы уметь это делать  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	

Сценарий: _01 создание номенклатуры
И Я запоминаю значение выражения "1" в переменную "Шаг"
И я делаю 10 раз
	И Я запоминаю значение выражения '"Товар без характеристик " + $Шаг$' в переменную "Наименование"
	И Я запоминаю значение выражения 'СтрЗаменить(Новый УникальныйИдентификатор,"-","")' в переменную "НовыйУИД"
	И Я запоминаю значение выражения '"e1cib/data/Catalog.Items?ref=" + $НовыйУИД$' в переменную "СсылкаНового"
	И я проверяю или создаю для справочника "Items" объекты:
		| 'Ref'                                                           | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'Vendor'                                                           | 'PackageUnit' | 'Description_en'          | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
		| '$СсылкаНового$' | 'False'        |       | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | ''            | '$Наименование$' | ''                 | ''               | ''               |          |          |          |          |         |

	И я перезаполняю для объекта табличную часть "AddAttributes":
		| 'Ref'                                                           | 'Property'                                                                                           | 'Value'                                                                                 |
		| 'e1cib/data/Catalog.Items?ref=b762b13668d0905011eb766bf96b2750' | 'e1cib/data/ChartOfCharacteristicTypes.AddAttributeAndProperty?ref=b762b13668d0905011eb766bf96b275d' | 'e1cib/data/Catalog.AddAttributeAndPropertyValues?ref=b762b13668d0905011eb766bf96b2761' |


	И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"

	
