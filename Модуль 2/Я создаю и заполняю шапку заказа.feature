﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: 01.Продажи

Как Менеджер по продажам я хочу
Создать заказ, чтобы иметь возомжность оформить продажу клиенту 
чтобы делать деньги   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	

Сценарий: Я создаю и заполняю шапку заказа
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Заказ (создание)"
	И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "EUR"
	И я нажимаю кнопку выбора у поля с именем 'Покупатель'
	Тогда открылось окно "Контрагенты"
	Когда открылось окно "Контрагенты"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке
			| 'Наименование'        |
			| 'Животноводство ООО ' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно "Заказ (создание) *"
	Тогда элемент формы с именем 'Покупатель' стал равен "Животноводство ООО "
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"


		
