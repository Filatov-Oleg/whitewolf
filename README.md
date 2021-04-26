Приложение Whitewolf предназначено для посетителей кальяной. После скачивания приложения пользователь проходит регистрацию и может посмотреть новостную ленту, информирующую об акциях, меню данного заведения и страничку профиля, а также забронировать столик.

Далее представлены скриншоты приложения (части, реализованые непосредственно мной).

Экран меню (код представлен в папке Hookah_project/HookahProject/VIPER modules/Booking/).
Пользователь может нажать на ячейку, и откроется подробное описание продукта (код представлен в папке Hookah_project/HookahProject/VIPER modules/Booking/BookingDetail/).

<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/menu_01.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/menu_02.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/menu_03.jpeg" width="220" height="400"/>

Экран бронирования столика (код представлен в папке Hookah_project/HookahProject/VIPER modules/Reserve/).
Пользователь может выбрать дату и время брони. Если посетитель выбирает дату или время менее, чем за 45 минут, и нажмет кнопку "Запросить бронирование", то появится предупреждение, что невозможно забронировать. Если пользователь выберет корректную дату и время, то появится подтверждение о бронировании. 

<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/reserve_01.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/reserve_02.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/reserve_03.jpeg" width="220" height="400"/>

Экран профиль (код представлен в папке Hookah_project/HookahProject/VIPER modules/Profile/User/).
Существуют два экрана профиля: для администратора и для посетитилей. 
Рассмотрим профиль админстратора и его доступный функционал. 

<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/admin_01.jpeg" width="220" height="400"/>

Администратор может посмотреть запросы на бронь столика, нажав на кнопку "Таблица бронирования", и откроется новый экран с таблицей. 
Код экрана таблицы бронирования представлен в папке Hookah_project/HookahProject/VIPER modules/Profile/User/.
После открытия администратор видит ячейки с информацией о посетителе, который хочет забронировать столик. Администратор свайпов вправо может узнать подтвержденная бронь или нет. Если желтый цвет, то администратор нажимает на ячейку и может позвонить посетителю, а после свайпов вправо подтвердить бронирование и у ячейки будет зеленый цвет. Если бронирование отменилось или администратор хочет удалить информацию о старых бронированиях, то свайпов влево удаляет ячейку. 

<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/tableReserve_01.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/tableReserve_02.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/tableReserve_03.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/tableReserve_04.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/tableReserve_05.jpeg" width="220" height="400"/>

Также администратор может изменить баллы на карте лояльности у посетителя. Для этого администратор нажимает на кнопку "Изменить баллы", и откроется экран для изменения баллов (код представлен в папке Hookah_project/HookahProject/VIPER modules/ChangeScores/). Введя номер карты и количество баллов, администратор нажимает на кнопку обновить баллы и появлется подтверждение об изменении. 

<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/changeScores_01.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/changeScores_02.jpeg" width="220" height="400"/>

Перейдем к профилю посетителя. На экране расположена личная информация пользователя: фото, имя, номер карты и количество баллов. Изменить фото можно, нажав на фотографию. Далее посетитель может перейти в Instagram заведения, кликнув на иконку Instagram. Посетитель может узнать расположение заведения, нажав на кнопку "На карте", и ему будет предложено три приложения карт, в одно из которых он может перейти. Также для уточнения какой-либо информации посетитель может нажать на кнопку "Связаться с хостесом". 

<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/user_01.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/user_04.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/user_02.jpeg" width="220" height="400"/> ==>
<img src="https://github.com/Filatov-Oleg/whitewolf/blob/master/Screenshots/user_03.jpeg" width="220" height="400"/>

