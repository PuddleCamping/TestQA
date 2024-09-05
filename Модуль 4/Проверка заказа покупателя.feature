﻿#language: ru

@tree
@Продажи
@ЗаказПокупателя

Функционал: Продажи. Заказ покупателя

Как Тестировщик я хочу
Проверить работу формы документа заказ покупателя 
чтобы Быть уверенным в её правильной работе   

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения

	//Сценарий: открытие формы документа нового заказа покупателя
	// И я закрываю все окна клиентского приложения

Сценарий: Подготовительный сценарий (Загрузка заказа для проверки изменения уже заполненных реквизитов
	// Справочник.AddAttributeAndPropertyValues

	// Документ.SalesOrder

	И я проверяю или создаю для документа "SalesOrder" объекты с обмен данными загрузка истина:
		| 'Ref'                                                                 | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'ManagerSegment'                                                          | 'Partner'                                                          | 'PriceIncludeTax' | 'Status'                                                                 | 'UseItemsShipmentScheduling' | 'Author'                                                        | 'Branch'                                                                | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | 'False'        | 2        | '24.02.2021 11:13:25' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'            | 'e1cib/data/Catalog.ObjectStatuses?ref=b762b13668d0905011eb766bf96b2789' | 'True'                       | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | 'e1cib/data/Catalog.BusinessUnits?ref=b762b13668d0905011eb7663e35d7958' | ''            | 2835             |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                 | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                                          | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'DeliveryDate'       | 'ProcurementMethod'             | 'Detail' | 'ProfitLossCenter' | 'RevenueType' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'CancelReason' | 'PartnerItem' | 'ReservationDate'    |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 2362.5      | 315            | 450     | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 7          | 472.5       | 2835          | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | '01.01.0001 0:00:00' | 'Enum.ProcurementMethods.Stock' | ''       | ''                 | ''            | 'False'            | 7                    | ''             | ''            | '01.01.0001 0:00:00' |

	И я перезаполняю для объекта табличную часть "SpecialOffers":
		| 'Ref'                                                                 | 'Key'                                  | 'Offer'                                                                 | 'Amount' | 'Percent' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 'e1cib/data/Catalog.SpecialOffers?ref=b762b13668d0905011eb767f10805e0f' | 315      |           |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                 | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 472.5    | 'True'                 | 472.5          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                 | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 2835     | 'False'   |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 2435.27  | 'False'   |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 2835     | 'False'   |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "PaymentTerms":
		| 'Ref'                                                                 | 'Date'               | 'ProportionOfPayment' | 'DuePeriod' | 'Amount' | 'CalculationType'                          |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '03.03.2021 0:00:00' | 100                   | 7           | 2835     | 'Enum.CalculationTypes.PostShipmentCredit' |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                 | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                       | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | '0e612907-9a9f-40e2-8755-aff44106b5d4' | 7          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=SI_SC' | 'e1cib/data/Catalog.RowIDs?ref=b76cbacb2511e57d11ebeab0dfce222b' | ''         |


Переменные:
	СсылкаНаЗаказ = 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c'
	// И Я запоминаю в переменную "$$СсылкаНаЗаказ$$" значение 'e1cib/data/Document.SalesOrder?ref=b76cbacb2511e57d11ebeab0dfce222c'
	

Сценарий: проверяем блокировку поля контрагент в пустом новом документе
	И я закрываю все окна клиентского приложения 
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	Тогда открылось окно "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ покупателя (создание)"
	И поле с именем "Partner" не заполнено
	Тогда элемент формы с именем 'LegalName' не доступен
	
	
Сценарий: проверяем заполнение поля партнер и автоподбор контрагента
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	Тогда открылось окно "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ покупателя (создание)"
	И поле с именем "Partner" не заполнено
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я перехожу к строке
			| 'Код' | 'Наименование'            |
			| '1'   | 'Клиент 1 (1 соглашение)' |
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя (создание) *"
	И элемент формы с именем 'Partner' стал равен 'Клиент 1 (1 соглашение)'
	Тогда элемент формы с именем 'LegalName' доступен
	И поле с именем 'LegalName' заполнено 

Сценарий: проверка заполнения поля соглашения для первичного заполнения, у клиента одно соглашение
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	Тогда открылось окно "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ покупателя (создание)"
	И поле с именем "Partner" не заполнено
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я перехожу к строке
			| 'Код' | 'Наименование'            |
			| '1'   | 'Клиент 1 (1 соглашение)' |
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя (создание) *"
	И элемент формы с именем 'Partner' стал равен 'Клиент 1 (1 соглашение)'
	И элемент формы с именем 'Agreement' стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'

Сценарий: проверка заполнения поля соглашения для первичного заполнения, у клиента два соглашения
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	Тогда открылось окно "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ покупателя (создание)"
	И поле с именем "Partner" не заполнено
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я перехожу к строке
			| 'Код' | 'Наименование'            |
			| '2'   | 'Клиент 2 (2 соглашения)' |
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя (создание) *"
	И элемент формы с именем 'Partner' стал равен 'Клиент 2 (2 соглашения)'
	И поле с именем "Agreement" не заполнено

Сценарий: проверяем работу поля контрагент при очистке поля партнер
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$СсылкаНаЗаказ$"
	И поле с именем 'LegalName' заполнено 
	Тогда открылось окно "Заказ покупателя * от * *"
	И я нажимаю на гиперссылку с именем 'DecorationGroupTitleCollapsedPicture'
	И поле с именем 'Partner' присутствует на форме
	И в поле с именем 'Partner' я ввожу текст ""
	И я перехожу к следующему реквизиту
	тогда поле с именем 'Partner' не заполнено
	и поле с именем 'LegalName' не заполнено
	и элемент формы с именем 'LegalName' не доступен

	
Сценарий: проверяем работу поля соглашение при очистке поля партнер
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$СсылкаНаЗаказ$"
	Тогда открылось окно "Заказ покупателя * от * *"
	И поле с именем 'LegalName' заполнено 
	И я нажимаю на гиперссылку с именем 'DecorationGroupTitleCollapsedPicture'
	И поле с именем 'Partner' присутствует на форме
	И в поле с именем 'Partner' я ввожу текст ""
	И я перехожу к следующему реквизиту
	тогда поле с именем 'Partner' не заполнено
	И поле с именем "Agreement" не заполнено	

Сценарий: проверяем перезаполнение поля контрагент при изменении уже заполненного поля партнер
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$СсылкаНаЗаказ$"
	И элемент формы с именем 'Partner' стал равен 'Клиент 1 (1 соглашение)'
	Тогда открылось окно "Заказ покупателя * от * *"
	И я нажимаю на гиперссылку с именем 'DecorationGroupTitleCollapsedPicture'
	И поле с именем 'Partner' присутствует на форме
	И я перехожу к следующему реквизиту
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование"            |
		| "2"   | "Клиент 2 (2 соглашения)" |
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя * от * *"
	Тогда элемент формы с именем 'LegalName' стал равен "Клиент 2"
		
Сценарий: проверяем перезаполнение поля соглашение при изменении уже заполненного поля партнер
	И я закрываю все окна клиентского приложения
	И Я открываю навигационную ссылку "$СсылкаНаЗаказ$"
	И элемент формы с именем 'Partner' стал равен 'Клиент 1 (1 соглашение)'
	Тогда открылось окно "Заказ покупателя * от * *"
	И я нажимаю на гиперссылку с именем 'DecorationGroupTitleCollapsedPicture'
	И поле с именем 'Partner' присутствует на форме
	И я перехожу к следующему реквизиту
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование"            |
		| "2"   | "Клиент 2 (2 соглашения)" |
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя * от * *"
	И поле с именем "Agreement" не заполнено	

