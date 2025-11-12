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
## Пример
```
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/uasaltid/UI-library/refs/heads/main/main.lua"))()

lib:init("Example")

function camera()
  local block = lib.create:block()
  lib.create:label(block, "FOV")
  lib.create:range(block, 20, 90, workspace.CurrentCamera.FieldOfView, function (fov)
    workspace.CurrentCamera.FieldOfView = fov
  end)
end

lib.create:tab("Камера", camera)
```
## lib.create:toggle
Создание переключателя
```
(
parent Указано в "Создание вкладок"  
enabled Включено по умолчанию?
callback Вызывается если переключено  
)
```
## lib.create:input
Добавить поле ввода
```
(
parent Указано в "Создание вкладок"  
placeholder Серый текст
default Текст по умолчанию
callback Вызывается если изменен текст  
)
```
## lib.create:dropbox
Добавить дроп бокс
```
(
parent Указано в "Создание вкладок" 
items Элементы
selected По умолчанию выбрано (индекс из items)
onchange При изменении
)
```
## lib.create:image
Добавить фото
```
(
parent Указано в "Создание вкладок"
url Сссылка на фото
)
```
