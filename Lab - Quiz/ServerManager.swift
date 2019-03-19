//
//  ServerManager.swift
//  Lab - Quiz
//
//  Created by Arkadiy Grigoryanc on 15/03/2019.
//  Copyright © 2019 Arkadiy Grigoryanc. All rights reserved.
//

import Foundation

struct ServerManager {
    
    private init() { }
    
    static var manager: ServerManager {
        return ServerManager()
    }
    
    func fetchQuations(_ closure: ([Question]) -> Void) {
        
        // Load and Parse Json from server............
        //..........
        
        closure(ServerManager.mockCreateQuestions())
        
    }
    
    private static func mockCreateQuestions() -> [Question] {
        return [
            Question(
                text: "Как oтнoситесь к прoтивoпoлoжнoму пoлу?",
                type: .single,
                answers: [
                    Answer(text: "С уважением.", types: [.starLord, .captainAmerica, .vision, .doctorStrange]),
                    Answer(text: "Люблю, и мне отвечают взаимностью.", types: [.ironMan, .blackPanther]),
                    Answer(text: "Я пережил(а) тяжелое расставание и пока нейтрально.", types: [.hulk]),
                    Answer(text: "Интересуюсь, но не взаимно.", types: [.spiderMan, .rocketRaccoon])
                    ]
            ),
            Question(
                text: "Пожертвовали бы вы собой, чтобы спасти остальных??",
                type: .single,
                answers: [
                    Answer(text: "Скорее всего, да.", types: [.starLord, .spiderMan, .vision, .blackPanther]),
                    Answer(text: "Нет. Самопожертвование - не моя черта.", types: [.ironMan, .hulk, .doctorStrange]),
                    Answer(text: "Да, если бы это изменило отношение ко мне в лучшую сторону.", types: [.spiderMan]),
                    Answer(text: "Я готов(а) на все ради товарищей.", types: [.rocketRaccoon])
                    ]
            ),
            Question(
                text: "Страдаeтe ли вы в одиночeствe?",
                type: .single,
                answers: [
                    Answer(text: "Да. Мне нужны друзья, кoтoрые oтвлекут oт мучительных вoспoминаний. ", types: [.starLord, .captainAmerica, .vision, .blackPanther]),
                    Answer(text: "Нет, мне комфортно наедине со своими мыслями и идеями.", types: [.ironMan, .blackPanther]),
                    Answer(text: "Бывает cкучновато, но я привык(ла).", types: [.hulk]),
                    Answer(text: "Это лучше, чем общаться с неприятными мне людьми.", types: [.spiderMan, .rocketRaccoon])
                    ]
            ),
            Question(
                text: "Выберите наиболее яркие черты вашего характера:",
                type: .multiple,
                answers: [
                    Answer(text: "Честность", types: [.hulk, .spiderMan, .captainAmerica, .vision, .blackPanther]),
                    Answer(text: "Упорство", types: [.starLord, .ironMan, .captainAmerica, .doctorStrange, .rocketRaccoon, .blackPanther]),
                    Answer(text: "Сила воли", types: [.ironMan, .captainAmerica, .doctorStrange, .blackPanther]),
                    Answer(text: "Ранимость", types: [.starLord, .ironMan, .hulk, .rocketRaccoon])
                    ]
            ),
            Question(
                text: "Вас оскорбили. Вы:",
                type: .single,
                answers: [
                    Answer(text: "Мне все равно.", types: [.hulk, .spiderMan, .vision]),
                    Answer(text: "Отшучусь.", types: [.ironMan, .rocketRaccoon]),
                    Answer(text: "Зачем обижаться, помогая противнику достичь желаемого?", types: [.captainAmerica, .blackPanther]),
                    Answer(text: "Скажу что-нибудь колкое в ответ.", types: [.starLord, .doctorStrange])
                    ]
            ),
            Question(
                text: "Стремитесь ли вы быть лидером?",
                type: .single,
                answers: [
                    Answer(text: "Да, всегда.", types: [.starLord, .captainAmerica, .rocketRaccoon]),
                    Answer(text: "Да, если я не являюсь таковым.", types: [.ironMan, .blackPanther]),
                    Answer(text: "Нет, мне это не нужно.", types: [.hulk, .spiderMan]),
                    Answer(text: "Нет, меня и так уважают.", types: [.vision, .doctorStrange])
                    ]
            ),
            Question(
                text: "Соответствует ли ваш внешний вид вашему внутреннему миру?",
                type: .single,
                answers: [
                    Answer(text: "Да, вполне.", types: [.ironMan, .captainAmerica, .doctorStrange, .blackPanther]),
                    Answer(text: "Ну... Не всегда.", types: [.starLord, .spiderMan]),
                    Answer(text: "Нет, я сильнее, чем кажусь.", types: [.hulk]),
                    Answer(text: "Нет, я слабее, чем кажусь.", types: [.vision, .rocketRaccoon])
                    ]
            ),
            Question(
                text: "Сентиментaльны ли вы?",
                type: .single,
                answers: [
                    Answer(text: "Да.", types: [.starLord, .vision, .blackPanther]),
                    Answer(text: "Нет.", types: [.hulk, .captainAmerica, .doctorStrange]),
                    Answer(text: "Нет, если это касается не меня.", types: [.ironMan, .rocketRaccoon]),
                    Answer(text: "Только в шутку.", types: [.spiderMan])
                    ]
            ),
            Question(
                text: "Недоброжелатели считают вас:",
                type: .single,
                answers: [
                    Answer(text: "Чудаком.", types: [.starLord, .rocketRaccoon]),
                    Answer(text: "Капризным и избалованным.", types: [.vision, .doctorStrange]),
                    Answer(text: "Простачком.", types: [.hulk, .spiderMan]),
                    Answer(text: "Самонадеянным глупцом.", types: [.ironMan, .captainAmerica, .blackPanther])
                    ]
            ),
            Question(
                text: "Любите ли вы розыгрыши?",
                type: .single,
                answers: [
                    Answer(text: "Нет.", types: [.captainAmerica, .vision, .doctorStrange]),
                    Answer(text: "Дa, но добрые и безобидные.", types: [.hulk, .blackPanther]),
                    Answer(text: "Да, я полон неожиданностей)))", types: [.starLord, .spiderMan]),
                    Answer(text: "Да-а! Люблю поиздеваться над приятелями и знакомыми!", types: [.starLord, .rocketRaccoon])
                    ]
            ),
            Question(
                text: "Выберите дикое животное:",
                type: .single,
                answers: [
                    Answer(text: "Лиса.", types: [.spiderMan, .vision, .doctorStrange, .blackPanther]),
                    Answer(text: "Медведь.", types: [.ironMan, .hulk, .captainAmerica]),
                    Answer(text: "Енот.", types: [.rocketRaccoon]),
                    Answer(text: "Кролик.", types: [.starLord])
                    ]
            ),
            Question(
                text: "Вы боитесь...",
                type: .single,
                answers: [
                    Answer(text: "...смерти близких.", types: [.spiderMan, .captainAmerica, .vision]),
                    Answer(text: "...причинить вред.", types: [.hulk]),
                    Answer(text: "...быть oтвергнутым(-oй).", types: [.starLord, .rocketRaccoon]),
                    Answer(text: "...потери доброго имени.", types: [.ironMan, .doctorStrange, .blackPanther])
                    ]
            ),
            Question(
                text: "Вас пpедали. Вы:",
                type: .single,
                answers: [
                    Answer(text: "Отомщу!", types: [.starLord, .ironMan]),
                    Answer(text: "Постараюсь забыть этого человека.", types: [.hulk, .doctorStrange]),
                    Answer(text: "Прощу и буду надеятся, что он раскается.", types: [.spiderMan, .captainAmerica, .vision, .blackPanther]),
                    Answer(text: "Украду у него что нибудь механическое.", types: [.rocketRaccoon])
                    ]
            ),
            Question(
                text: "Какая из цитат ниже походит вам?",
                type: .single,
                answers: [
                    Answer(text: "Хочешь жить в иллюзии - мечтай, хочешь жить в реальности - познавай...", types: [.doctorStrange]),
                    Answer(text: "У человека есть две любимые игрушки: собственная судьба и чужие чувства.", types: [.starLord, .ironMan, .hulk, .vision]),
                    Answer(text: "Жизнь - слишком сложна, чтобы рассуждать о ней серьезно.", types: [.rocketRaccoon]),
                    Answer(text: "Нет хороших друзей, нет плохих друзей, есть только люди, с которыми ты хочешь быть, с которыми тебе нужно быть, и которые поселились в твоем сердце.", types: [.spiderMan, .blackPanther])
                    ]
            ),
            Question(
                text: "На сколько ты ненавидишь Таноса (от «Ненавижу» до «Готов убить»)",
                type: .ranged,
                answers: [
                    Answer(text: "Ненавижу", types: SuperHero.allCases),
                    //Answer(text: "", types: SuperHero.allCases),
                    //Answer(text: "3", types: SuperHero.allCases),
                    Answer(text: "Убью", types: SuperHero.allCases)
                    ]
            )
        ]
    }
    
}
