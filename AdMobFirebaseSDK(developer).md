## Инструменты
> OS GNU/Linux Ubuntu 18.04;
>
> Android Studio >= 3.4

## Приготовления:
1. Скачать репозиторий https://gitlab.telebreeze.com/TPS/telebreeze-player-android и переключиться на ветку firebase
2. Иметь аккаунт на https://apps.admob.com
3. Иметь аккаунт на https://firebase.google.com

## Настройка Firebase (для себя):
1. Войти под своей учетной записью на https://firebase.google.com
2. Нажать "Добавить проект"
3. Заполнить все поля и нажать "Создать проект"
4. После создания проекта нажать "Продолжить"
5. Выбрать нужную платформу: IOS, Android, Web
6. Заполнить все поля:
	- Название пакета Android можно взять из файла AndroidManifest.xml
	- Псевдоним любой
	- Хеш сертификат для отладки создается командой в терминале: 
		> keytool -list -v -alias androiddebugkey -keystore ~/.android/debug.keystore    				- Linux
		>
		> keytool -list -v -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore  		- Windows
7. Зарегистрировать приложение
8. Скачать файл конфигурации и скопировать/переместить его в папку с проектом

## Подключение Firebase (для клиента):
1. Получить от клиента `google-services.json`
2. Добавить его в корневую папку проекта

## Настройка AdMob (для себя):
1. Войти под своей учетной записью на https://apps.admob.com
2. Нажать на пункт "Приложения"
3. Выбрать "Добавить приложение"
4. Выбрать подходящий вариант наличия приложения в Android Market
5. Ввести название приложения
6. Выбрать платформу и нажать "Добавить"
7. При необходимости нажать "Следующий шаг"
8. Выбрать тип рекламы: Баннер/Межстраничное объявление/С вознагражданием
9. Заполнить поля
10. Нажать "Далее"
11. После создания приложения зайти во вкладку "Рекламные блоки" и скопировать идентификатор рекламного блока
12. Вставить идентификатор рекламного блока в файл `path/to/project/src/main/res/value/strings.xml` в поле `<string name="admob_banner_id">YOUR_BANNER_ID</string>`
13. Вернуться на сайт https://apps.admob.com
14. Перейти во вкладку "Настройки проложения" и скопировать идентификатор приложения
15. Вставить идентификатор приложения в файл `path/to/project/src/main/res/value/strings.xml` в поле `<string name="admob_app_id">YOUR_APP_ID</string>`

## Синхронизация AdMob и Firebase SDK:
1. Выбрать свое приложение в пункте приложения на https://apps.admob.com
2. На странице "Обзор приложения" выбрать "Установить связь"
3. Введите то же название проекта, что и при регистрации приложения в Firebase
4. Выбрать пункт "Связать с существующим проектом Firebase" и в выпадающем меню выбрать нужное приложение
5. Готово

## Дополнительные ресурсы:
1. [Cписок библиотек для подключения функций Firebase. Добавляется в build.gradle.](https://firebase.google.com/docs/android/setup#available-libraries)
2. [Cписок тестовых идентификаторов для проверки работы приложения]( https://developers.google.com/admob/android/test-ads)
3. [Список библиотек для корректной миграции](https://developer.android.com/jetpack/androidx/migrate)
4. [Инструкция как сделать баннер](https://developers.google.com/admob/android/banner)
5. [Инструкция как сделать межстраничное объявление](https://developers.google.com/admob/android/interstitial)
6. [Инструкция для создния видео с вознаграждением (старая API)](https://developers.google.com/admob/android/rewarded-video)
7. [Инструкция для создния видео с вознаграждением (новая API бета)](https://developers.google.com/admob/android/rewarded-ads)