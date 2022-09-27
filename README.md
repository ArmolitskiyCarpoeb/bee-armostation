<h1 align="center">Armostation: Bee edit</h1>

![Discord Banner 2](https://discordapp.com/api/guilds/1001501115000561774/widget.png?style=banner2)

[![forinfinityndbyond](https://user-images.githubusercontent.com/5211576/29499758-4efff304-85e6-11e7-8267-62919c3688a9.gif)](https://www.reddit.com/r/SS13/comments/5oplxp/what_is_the_main_problem_with_byond_as_an_engine/dclbu1a)

**Конфа:** https://discord.gg/PtSFnEnTRR
**Кодовая база:** https://github.com/ArmolitskiyCarpoeb/bee-armostation
**Вики (англ.):** https://wiki.beestation13.com/view/Main_Page


## СКАЧАТЬ

Для сосунков: https://github.com/ArmolitskiyCarpoeb/bee-armostation/archive/refs/heads/master.zip
Для продвинутых: Клонируете репозиторий https://github.com/ArmolitskiyCarpoeb/bee-armostation.git

## УСТАНОВКА

**Для компиляции (установки) необходим Dream Maker**.

**Компиляция в самом Dream Maker не рекомендуется так как это не скомпилирует TGUI**, ну и ты получишь ошибку типа `'tgui.bundle.js': cannot find file`.

### Компиляция через VSCode (Рекомендуется)

**[How to compile in VSCode and other build options](tools/build/README.md).**

### Компиляция без VSCode
Открываешь `BUILD.bat`в корне и ждёшь до 5 минут, готово. Для линуксойдов запускаешь  `./tools/build/build` находясь в корне билда.

Если ты видишь ошибки при компиляции то
1. Ты обосрался и тебе надо перекачать файлы заного или скачать tgui у друга и скопировать в корень билда
2. Обосрался кодер - идёшь в конфу и ноешь какие кодеры пидорасы
3. Обосрались кодеры beestation - тут идёшь в https://discord.gg/Vh8TJp9 или https://discord.gg/z9ttAvA и ноешь на английском о проблеме

Как всё скомпилируется и файл будет готов к запуску, **сначала делаешь копию config_example и переименовываешь её в config**, затем идёшь в config/config.txt и настраиваешь всё что тебе надо .Рекомендую потыкать ротацию режимов при игроках и поставить айпи сервера чтоб игроки не переподключались после отключения от сервера. Не рекомендую тыкать режимы у которых стоит 0 кроме Экстендед, так как в них могут быть различные ошибки от которых серверу будет не хорошо. Экста по сути не является режимом по умолчанию и не входит в ротацию потому что всем в первые 20 минут надоедает играть в работку.

Ещё рекомендую потыкать config/admins.txt, чтоб убрать пендоских транспидоров и добавить русских гигачадов. Свои ранги можно настроить в config/admin_ranks.txt.

Собственно в admins.txt всё должно выглядеть так

```
ckey_primer_raz = Rank_raz
ckey_primer_dva = Rank_dva
```

Сикей с маленькой буквы, ранг с соблюдением больших и маленьких букв, затем если надо ещё добавить педаль то пишешь с новой строки как в примере выше.

Этот код заколдован библиотекой rust-g. Для пользователей Окон .dll библиотека уже скомпилирована и лежит в коде, для Линухойдов надо качать библиотеку самим. Всё можно найти [тут](https://github.com/tgstation/rust-g).

Итак, после проделаных манипуляций вы хотите запустить сервер, верно? Значит открываете Dream Daemon и вводите путь до beestation.dmb. Ставишь порт как указано в config.txt, и ставишь в кнопке "Security" значение "Safe". Затем нажимаешь GO и ждёшь загрузки. Если ты запускаешь не локалку для тестов то тебе стоит настроить SQL (см. ниже).

## ОБНОВЛЕНИЕ

Если ты скачивал через git то обновляешься через ПО которым ты качал билд или же читаешь что написано ниже.

### Мануал по обновлению вручную

Чтобы обновить билд, стоит сделать резервную копию папок /config и /data, так как в них хранится конфигурация вашего сервера, настройки игроков и список банов.

Вытаскиваешь новые файлы (желательно в пустую папку, но обновление на месте должно работать нормально), копируешь папки /config и /data обратно как закончил обновляться, перезаписав их при появлении запроса, если не указано иное, и компилируешь билд. Once you start the server up again, you should be running the new version.

## ХОСТИНГ

Для хостинга требуется [распространяемый пакет Microsoft Visual C++ 2015](https://www.microsoft.com/en-us/download/details.aspx?id=52685). В частности, `vc_redist.x86.exe`. *Не* 64-битная версия. Если ты ставил игру то она у тебя уже должна быть но лучше скачай и установи.

Если тебе надо управлять сервером не находясь на самом сервере или далеко от хоста то возможно тебе стоит посмотреть это https://github.com/tgstation/tgstation-server.

## КАРТЫ

Оригинальная пчелостанция имеет в наличии следующие карты

* [BoxStation](https://wiki.beestation13.com/view/Boxstation)
* [CorgStation](https://wiki.beestation13.com/view/CorgsStation)
* [DeltaStation](https://wiki.beestation13.com/view/DeltaStation)
* [FlandStation](https://wiki.beestation13.com/view/FlandStation)
* [KiloStation](https://wiki.beestation13.com/view/KiloStation)
* [MetaStation (default)](https://wiki.beestation13.com/view/MetaStation)
* [PubbyStation](https://wiki.beestation13.com/view/PubbyStation)
* [RuntimeStation (used for debugging)](https://wiki.beestation13.com/view/RuntimeStation)

Все карты имеют свой код в формате .dm и .json которые находятся в папке _maps. Карты загружаются при запуске сервера. Следуя этому руководству ты не обосрёшь свои руки и кодеры с маперами не придут ночью и не выебут тебя нахуй.

Карта которая будет загружена при запуске сервера или в следующем раунде находится в data/next_map.json, которая по сути является копией json в _maps. Если же файла нет то загружается карта выбраная в config/maps.txt. Ну а если и этого файла нет или же нету выбраной карты в файле то будет загружена BoxStation. Если ты хочешь выбрать карту находясь в игре то жми на "Server - Change Map" или копируешь json карты из _maps в или вместо data/next_map.json перед запуском сервера. Ну и можешь в качестве отладки отметить его в Dream Maker и эта карта будет запускаться каждый раунд.

Если ты ставишь сервер и хочешь чтобы была рандомная ротация карт, то включаешь данную опцию в [config.txt](config/config.txt), а затем указываешь какие карты надо запускать в [maps.txt](config/maps.txt).

Если ты не используешь StrongDMM то тебе придётся использовать [инструмент для сборки карты](https://wiki.beestation13.com/view/Map_Merger).

## АВЕЙКИ ИЛИ ГЕЙТВЕЙ КАРТЫ

Пчелостанция поддерживает загрузку авеек но по умолчанию они отключены.

Карты авеек находятся в _maps/RandomZLevels. Каждая авейка имеет свой код который находится в /code/modules/awaymissions/mission_code. Эти файлы должны быть включены и скомпилированы иначе сервер крашнется при попытке запустить их.

Чтоб включить авэйку тебе придётся открыть config/awaymissionconfig.txt и раскоментировать (убрать #) или добавить строку с .dmm. Если раскоментировано более одной миссии то рандомизатор высрет в гейтвей рандомную авейку.

## SQL БАЗА ДАННЫХ

Для SQL требуется Mariadb версией 10.2 или более поздней. Mysql не поддерживается. SQL нужна что-бы сохранять высер что пишут игроки в библиотеке, сбора статистики, внутреннего магазина, нотесов админов и банов ну и ещё прочей хуйни. Данные для доступа к Mariadb вписывать в /config/dbconfig.txt, схема SQL находится в /SQL/beestation_schema.sql и /SQL/beestation_schema_prefix.sql в зависимости от того нужны ли тебе префиксы таблиц. Подробнее: https://wiki.beestation13.com/view/Downloading_the_source_code#Setting_up_the_database.

Если ты тестишь базу данных на Windows, то ты можешь использовать автономную версию предварительной загрузки MariaDB с пустой (но инициализированным) базой данных tgdb. Всё находится тут: https://tgstation13.download/database/ Просто разархивируй и запустити рабочий (но небезопасный) сервер базы данных. Включает заархивированную копию папки данных для легкого сброса до исходного состояния.

## WEB/CDN РЕСУРСНИК

Хранилище игровых ресурсов ускоряет присоединение игроков и снижает нагрузку на игровой сервер.

1. В compile_options.dm to ставишь после `PRELOAD_RSC` цифру `0` вместо других
1. Добавляешь ссылку в config/external_rsc_urls которая указывает на .zip архив с .rsc файлом внутри.
    * Оригинальный бистейшовый .rsc находится в http://rsc.beestation13.buzz/beestation.zip. Если сервер не оригинальный (а у нас он не оригинальный) то можно использовать службы cdn, такие как CDN77 или cloudflare (только там ещё надо добавить в page rule кэширование что-бы zip архив кэшировался), или ты можешь создать свой cdn, используя провайдеров route 53 и vps.
	* Несмотря на это, даже выгрузка rsc на веб-сайт без CDN будет значительным ускорением загрузки нежели загрузка с самого игрового сервера rsc файла.

## IRC БОТОВОДСТВО

В репозиторий включен IRC-бот, работающий на python3 который передаёт ахелпы на указанный IRC-канал/сервер. Дополнительные сведения см. в папке /tools/minibot.

## ПОМОЩЬ

Смотри [CONTRIBUTING.md (англ.)](.github/CONTRIBUTING.md)

## ЛИЦЕНЗИЯ

Весь код после [commit 333c566b88108de218d882840e61928a9b759d8f on 2014/31/12 at 4:38 PM PST](https://github.com/tgstation/tgstation/commit/333c566b88108de218d882840e61928a9b759d8f) находится под лицензией [GNU AGPL v3](https://www.gnu.org/licenses/agpl-3.0.html).

Весь код до [commit 333c566b88108de218d882840e61928a9b759d8f on 2014/31/12 at 4:38 PM PST](https://github.com/tgstation/tgstation/commit/333c566b88108de218d882840e61928a9b759d8f) находится под лицензией [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.html).
(Включая инструменты, если в их файле readme не указано иное.)

Смотри LICENSE и GPLv3.txt для подробностей.

Клиентская часть tgui лицензируется как подпроект по лицензии MIT. Файлы шрифтов Font Awesome, используемые tgui, лицензируются в соответствии с лицензией SIL Open Font License v1.1. Ресурсы tgui лицензируются в соответствии с [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/). API TGS3 лицензируется как подпроект по лицензии MIT.

Смотри tgui/LICENSE.md что-бы прочитать MIT лицензию.
Смотри tgui/assets/fonts/SIL-OFL-1.1-LICENSE.md что-бы прочитать SIL Open Font License.
См. нижние колонтитулы code/\_\_DEFINES/server\_tools.dm, code/modules/server\_tools/st\_commands.dm, и code/modules/server\_tools/st\_inteface.dm for что-бы прочитать MIT license.

Все активы, включая значки и звук, находятся под лицензией [Creative Commons 3.0 BY-SA license](https://creativecommons.org/licenses/by-sa/3.0/) если не указано другое.

# Остальные разработчики
- /tg/, у них мы взяли основной код.
- CEV Eris, спасибо за спрайты ПДА.
- TGMC, код биндов для клавиш.
- Citadel, за красивое освещение.
