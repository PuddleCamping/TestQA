﻿#language: ru

@tree

Функционал: 00.НСИ	

Как Оператор я хочу
Создать клиента
чтобы иметь возможность продавать ему товар  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: Я проверяю создание клиента
*Открытие формы создания клиента
	И В командном интерфейсе я выбираю "Продажи" "Контрагенты"
	Тогда открылось окно "Контрагенты"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
*Заполнения наименования клиента
	Когда открылось окно "Контрагент (создание)"
	И в поле с именем 'Наименование' я ввожу текст "Тестовый контрагент"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Оптовая"
				
*Заполнение номера телефона клиента
	Когда открылось окно "Контрагент (создание) *"
	И в поле с именем 'Телефон' я ввожу текст "1111"
*Сохранение
	Когда открылось окно "Контрагент (создание) *"
	Тогда я нажимаю на кнопку с именем 'ФормаЗаписать'
*Проверка сохранения по коду
	И я запоминаю значение поля "Код" как "$Код$"
	И В командном интерфейсе я выбираю "Продажи" "Контрагенты"
	Тогда открылось окно "Контрагенты"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И таблица "Список" содержит строки
		| 'Код' |
		| $Код$ |				