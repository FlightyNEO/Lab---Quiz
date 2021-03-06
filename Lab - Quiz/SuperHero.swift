//
//  SuperHero.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import Foundation

enum SuperHero: String, CaseIterable, CustomDebugStringConvertible, CustomStringConvertible {
    
    case starLord = "👻"
    case ironMan = "👮‍♂️"
    case hulk = "👨‍🦳"
    case spiderMan = "🕷"
    case captainAmerica = "🇦🇺"
    case vision = "📺"
    case doctorStrange = "👨‍⚕️"
    case rocketRaccoon = "🦡🚀"
    case blackPanther = "🐆"
    
    //    typealias RawValue = String
    //    var rawValue: String? { return nil }
    
    typealias FullName = (nickName: String, name: String)
    
    var fullName: FullName {
        
        switch self {
        case .starLord: return (nickName: "Star-Lord", name: "Peter Jason Quill")
        case .ironMan: return (nickName: "Iron Man", name: "Anthony Edward \"Tony\" Stark")
        case .hulk: return (nickName: "Hulk", name: "Роберт Брюс Бэннер")
        case .spiderMan: return (nickName: "Spider-Man", name: "Peter Parker")
        case .captainAmerica: return (nickName: "Captain America", name: "Steven Rogers")
        case .vision: return (nickName: "Vision", name: "Victor Shade")
        case .doctorStrange: return (nickName: "Doctor Strange", name: "Dr. Stephen Vincent Strange")
        case .rocketRaccoon: return (nickName: "Rocket Raccoon", name: "")
        case .blackPanther: return (nickName: "Black Panther", name: "Т’Чалла")
        }
        
    }
    
    var description: String {
        
        switch self {
        case .starLord:
            return "Питер Джейсон Квилл — человек с неземным происхождением. Ясон, принц великой галактической империи Спартов, его настоящий отец. Давным-давно его корабль разбился среди гор Колорадо. Там Ясон встретил будущую мать Питера Меридит Квилл. Девушка заботилась о пришельце и помогла ему починить корабль. Ясон и Меридит полюбили друг друга, но вскоре инопланетному принцу пришлось улететь на войну. Он покинул девушку, не зная, что та была беременна. Десять лет спустя Мередит была убита двумя солдатами бадунами, которые прибыли на Землю с целью убить Питера и положить конец роду Ясона. Затем Питер обнаружил пистолет своего отца и убил пришельцев, после чего убежал из дома, прежде чем тот был уничтожен кораблём бадунов, убеждённых в его смерти. Осиротевший Питер воспитывался в детском доме и, повзрослев, присоединился к НАСА."
        case .ironMan:
            return "Сын богатого промышленника Говарда Старка, Тони был гениальным изобретателем и механиком. Он унаследовал бизнес отца в возрасте 21 года, превратив компанию в одного из лидирующих производителей оружия. Старк был ранен осколком в грудь во время полевого испытания на пригодность боевой брони, которая должна была наделить солдат боевыми способностями. Старка взял в плен оружейный барон Wong Chu, вынудив его создать оружие массового поражения — только тогда Тони получил бы операцию, необходимую для спасения его жизни."
        case .hulk:
            return "Основа Халка, Брюс Бэннер по-разному изображался разными авторами, но общие темы сохраняются. Бэннер — гений, но лишённый эмоций в большинстве образов. Он разработал гамма-бомбу, ставшую причиной его беды, и иронический поворот его самопричинённой судьбы был одной из самых постоянных общих тем. Ари Каплан описывает персонажа так: «Брюс Бэннер живёт в постоянном состоянии паники, вечно опасаясь, что монстр внутри него вырвется на свободу, и, таким образом, он не может образовать значительные узы с кем-либо». В процессе издаваемой истории Халка авторы продолжали обрамлять Брюса Бэннера в этих тонах. У разных авторов его раздробленная личность приводила к превращениям в разные версии Халка. Эти превращения обычно непреднамеренны, и часто авторы связывали превращение с эмоциональными спусковыми механизмами, такими как ярость и страх. С прогрессированием серий разные авторы переделывали Халка, изменяя его личность для отражения изменений в физиологии или психике Бэннера. Авторы также освежали и изменяли некоторые аспекты личности Бэннера, показывая его эмоционально подавленным, но способным на глубокую любовь к Бетти Росс и разрешение встающих перед ним проблем. Под авторством Пола Дженкинса Бэннер был показан способным беглецом, применяющим дедуктивный метод, чтобы выяснять события, происходящие вокруг него. Когда Бэннер управлял телом Халка, он применял принципы физики к проблемам и вызовам и использовал дедуктивное рассуждение."
        case .spiderMan:
            return "По оригинальной версии, Питер Паркер представлялся как одарённый в науке подросток-сирота, который живёт со своими дядей и тётей в Форест-Хилс, Куинс, Нью-Йорк. Питер — отличник, из-за чего подвергается насмешкам сверстников, зовущих его «книжным червём». В выпуске Amazing Fantasy №15 во время научной выставки его случайно кусает радиоактивный паук. Благодаря этому он получает «паучьи» сверхспособности, как, например, суперсилу, способность передвигаться по стенам и феноменальную прыгучесть. Пользуясь своими научными знаниями, Питер сконструировал устройство, которое крепится к его запястьям и позволяет «выстреливать» паутиной. Питер берёт псевдоним Человек-паук, надевает костюм и скрывает от всех своё настоящее лицо. Как Человек-паук он становится известной телезвездой. Однажды на студии он упускает шанс остановить вора, который, скрываясь от полицейского, пробежал мимо. Тогда Питер решил, что это «забота полиции, а не звезды». Спустя несколько недель его дядя Бен ограблен и убит, и разгневанный Человек-паук отправляется на поиски убийцы, которым оказывается тот самый вор, которого он отказался остановить. Осознав, что «большая сила влечёт за собой большую ответственность», Человек-паук решает лично начать бороться с преступностью.!"
        case .captainAmerica:
            return "Капитан Америка обладает сверхчеловеческой силой, в результате действия сыворотки суперсолдата и обработки вита-лучами он был превращён из слабого юноши в «совершенный» образец человеческого развития и состояния. Сила, выносливость, ловкость, скорость, реакция и прочность Капитана находятся на пике человеческих возможностей. Было установлено, что тело Роджерса регулярно вырабатывает сыворотку суперсолдата; она не исчезает."
        case .vision:
            return "Вижен был создан злым роботом Альтроном для борьбы со своими создателями Хэнком Пимом и Джанет ван Дайн, являющихся членами Мстителей. Основой для Вижена послужили остатки оригинального Человека-факела, супергероя-андроида 1940-х годов. Живая машина была запрограммирована нейронными процессорами с моделью мозга, заряженного ионами супергероя Чудо-человека, также Вижену были имплантированы контролирующие кристаллы, чтобы держать его в повиновении. Альтрон отправил Вижена против Мстителей, и это было во время первой его встречи с супергероиней Осой, которая придумала название синтезоид. Движимый Мстителями, Вижен предал свою программу и помог команде супергероев победить своего расчётливого создателя."
        case .doctorStrange:
            return "Стивен Стрэндж был талантливым нейрохирургом, но при этом человеком он был самовлюблённым и самонадеянным. Стрэндж мог стать знаменитым врачом, но на одном торжественном вечере напился, а затем, возвращаясь домой, попал в автомобильную аварию: Стивен не справился с управлением машины, и она врезалась в столб. Он получает сильное повреждение обеих рук, из-за которого карьера Стивена как нейрохирурга закончилась. Желая остаться врачом, будущий магистр мистических наук отправляется в путешествие по миру на поиски средства исцеления для своих рук. Путешествуя, Стрэндж узнал об одном человеке по имени Древний, живущем в Тибете и способном творить чудеса. Древний отказывается исцелять Стивена, он говорит, что тот должен заняться изучением магии и сам найти исцеление. Разозлённый отказом, Стрэндж собирается уйти из замка Древнего, но, проходя мимо одной из комнат, он видит ученика Древнего — барона Мордо, который готовится убить своего учителя. Стивен предупреждает Древнего о готовящемся покушении, тем самым спасая волшебнику жизнь. Мордо бежит из замка Древнего, который предлагает Стрэнджу стать его новым учеником."
        case .rocketRaccoon:
            return "Реактивный Енот действует как «Опекун Сектора Краеугольного камня», области космического пространства, которая отрезана от остальной части космоса так называемой Галисийской Стеной. Ракета — капитан звездолета «Rack 'n' Ruin», он и его первый помощник Уол Расс (говорящий морж) происходят из планеты Полусвет, заброшенной колонии для психически больных. Там животных наделяют человеческим интеллектом и способностью ходить на двух ногах, чтобы они наблюдали за обитателями. Он также является главным офицером Полусвета, который защищает колонию от различных угроз."
        case .blackPanther:
            return "Т’Чалла — потомок древней королевской династии, которая много лет правит страной Вакандой, затерянной в африканских джунглях. Его отец, Т'Чака, был одним из самых выдающихся королей в истории Ваканды и первой Чёрной пантерой. Он смог обеспечить технологический прорыв своей стране, сделать её одной из самых развитых не только в регионе, но и во всём мире. Т’Чака первым начал разработку ценного вибраниума, вымышленного металла внеземного происхождения. Этот вибраниум и погубил Т’Чаку: пришли наёмники во главе с Улиссом Кло и попытались устроить государственный переворот. Т’Чака был убит, и лишь вмешательство ещё совсем молодого Т’Чаллы помогло остановить захватчиков и спасти Ваканду. Так мальчик стал королём."
        }
        
    }
    
    var debugDescription: String {
        return self.rawValue
    }
    
    
}
