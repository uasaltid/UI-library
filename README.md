# Документация
## Базовое

Начнём с того что нам нужно подключить библиотеку  
```
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/uasaltid/UI-library/refs/heads/main/main.lua"))()
```
В этом примере мы создаем переменную lib в которой после загрузки библиотеки появится сам модуль    

## Создание окна
Для того что бы создать новое окно нужно сделать следующее

```
lib:init("example") -- ("НАЗВАНИЕ")
```

Код выше создает основу из которой мы будем "лепить" остальное GUI

## Создание вкладок

коллбэк - Что вызывать при открытии вкладки (function)
parent - lib.create:block() (если nil то root)

```
local function firsttab()
  local block = lib.create:block() -- Создание блока что бы элементы в нем шли по горизонтали а не все вниз
  lib.create:label(block) -- (parent, text, size, font, XAlignment) Читайте далее
end

lib.create:tab("first tab", firsttab) -- ("Название вкладки", коллбэк)
```

## lib.create:block
Нужен для того что бы следующие элемент располагались по координате X (если без него то все будет по Y)

## lib.create:label
Нужен что бы добавить текст
```
(  
parent Указано в "Создание вкладок"  
text Текст  
size Размер шрифта  
font Шрифт  
XAlignment Расположение текста (Left Center Right)  
)  
```

## lib.create:range
Для того что бы создать ползунок
```
(
parent Указано в "Создание вкладок"  
min Минимальное значение  
max Максимальное значение  
value Значение по умолчанию  
callback Вызывается если изменена позиция  
)
```
