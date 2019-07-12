//: Playground - noun: a place where people can play
//: Lesson 1

//: РЕШИТЬ КВАДРАТНОЕ УРАВНЕНИЕ

import UIKit
import Darwin.C.math

// коэффициенты уравнения
let a: Double = 5.0
let b: Double = 3.0
let c: Double = 7.0

// Корни
let cor_1: Double
let cor_2: Double

// Находим дискриминант
var Disc: Int
var i = pow(Double(b),2)
Disc = Int(i - (4 * a * c))

// Находим корни
if Disc > 0 {
    cor_1 = (-b + sqrt(Double(Disc))) / (2 * a)
    cor_2 = (-b - sqrt(Double(Disc))) / (2 * a)
} else if Disc < 0 {
    print("Корней нет")
} else if Disc == 0 {
    cor_1 = (-b + sqrt(Double(Disc))) / (2 * a)
}

//: ДАНЫ КАТЕТЫ ПРЯМОУЛЬНОГО ТРЕУГОЛЬНИКА, НАЙТИ ПЕРИМЕТР, ПЛОЩАДЬ И ГИПОТЕНУЗУ

let Katet_a: Double = 4.0
let Katet_b: Double = 3.0

// Найдем гипотенузу

let gipoten_c: Double
gipoten_c = sqrt(pow(Katet_a, 2) + pow(Katet_b, 2))

// Найдем площадь

let s: Double
s = (1 / 2) * Katet_a * Katet_b

// Найдем периметр

let p: Double
p = Katet_a + Katet_b + gipoten_c

//: * ПОЛЬЗОВАТЕЛЬ ВВОДИТ СУММУ ВКЛАДА В БАНК И ГОДОВОЙ %. НАЙТИ СУММУ ВКЛАДА ЧЕРЕЗ 5 ЛЕТ

let MainVklad: Int = 100000 // Сумма вложения
let ProcYear: Int = 12 // Процент вложения
let SrokVlozh: Int = 1825 // Срок вложения

// Найдем сумму вклада

let SumPoluch: Int
SumPoluch = (MainVklad * ProcYear * SrokVlozh) / (365 * 100) // % вклада

// Общая сумма

let ObshSum: Int
ObshSum = MainVklad + SumPoluch





