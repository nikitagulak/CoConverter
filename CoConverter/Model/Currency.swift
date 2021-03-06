//
//  Currency.swift
//  CoConverter
//
//  Created by Nick on 04/05/2019.
//  Copyright © 2019 Nikita Gulak. All rights reserved.
//

import Foundation

struct Currency {
    let flag: String
    let code: String
    let name: String
    
    init(flag: String, code: String, name: String) {
        self.flag = flag
        self.code = code
        self.name = name
    }
}

var allCurrencies: [Currency] = [
    Currency(flag: "🇦🇪", code: "AED", name: "UAE Dirham"),
    Currency(flag: "🇦🇫", code: "AFN", name: "Afghan Afghani"),
    Currency(flag: "🇦🇱", code: "ALL", name: "Albanian Lek"),
    Currency(flag: "🇦🇲", code: "AMD", name: "Armenian Dram"),
    Currency(flag: "🇨🇼", code: "ANG", name: "Netherlands Antillean Gulden"),
    Currency(flag: "🇦🇴", code: "AOA", name: "Angolan Kwanza"),
    Currency(flag: "🇦🇷", code: "ARS", name: "Argentine Peso"),
    Currency(flag: "🇦🇺", code: "AUD", name: "Australian Dollar"),
    Currency(flag: "🇦🇼", code: "AWG", name: "Aruban Florin"),
    Currency(flag: "🇦🇿", code: "AZN", name: "Azerbaijani Manat"),
    Currency(flag: "🇧🇦", code: "BAM", name: "Bosnia And Herzegovina Konvertibilna Marka"),
    Currency(flag: "🇧🇧", code: "BBD", name: "Barbadian Dollar"),
    Currency(flag: "🇧🇩", code: "BDT", name: "Bangladeshi Taka"),
    Currency(flag: "🇧🇬", code: "BGN", name: "Bulgarian Lev"),
    Currency(flag: "🇧🇭", code: "BHD", name: "Bahraini Dinar"),
    Currency(flag: "🇧🇮", code: "BIF", name: "Burundi Franc"),
    Currency(flag: "🇧🇳", code: "BND", name: "Brunei Dollar"),
    Currency(flag: "🇧🇴", code: "BOB", name: "Bolivian Boliviano"),
    Currency(flag: "🇧🇷", code: "BRL", name: "Brazilian Real"),
    Currency(flag: "🇧🇸", code: "BSD", name: "Bahamian Dollar"),
    Currency(flag: "🤑", code: "BTC", name: "Bitcoin"),
    Currency(flag: "🇧🇹", code: "BTN", name: "Bhutanese Ngultrum"),
    Currency(flag: "🇧🇼", code: "BWP", name: "Botswana Pula"),
    Currency(flag: "🇧🇾", code: "BYN", name: "New Belarusian Ruble"),
    Currency(flag: "🇧🇾", code: "BYR", name: "Belarusian Ruble"),
    Currency(flag: "🇧🇿", code: "BZD", name: "Belize Dollar"),
    Currency(flag: "🇨🇦", code: "CAD", name: "Canadian Dollar"),
    Currency(flag: "🇨🇩", code: "CDF", name: "Congolese Franc"),
    Currency(flag: "🇨🇭", code: "CHF", name: "Swiss Franc"),
    Currency(flag: "🇨🇱", code: "CLP", name: "Chilean Peso"),
    Currency(flag: "🇨🇳", code: "CNY", name: "Chinese Yuan"),
    Currency(flag: "🇨🇴", code: "COP", name: "Colombian Peso"),
    Currency(flag: "🇨🇷", code: "CRC", name: "Costa Rican Colon"),
    Currency(flag: "🇨🇺", code: "CUP", name: "Cuban Peso"),
    Currency(flag: "🇨🇻", code: "CVE", name: "Cape Verdean Escudo"),
    Currency(flag: "🇨🇿", code: "CZK", name: "Czech Koruna"),
    Currency(flag: "🇩🇯", code: "DJF", name: "Djiboutian Franc"),
    Currency(flag: "🇩🇰", code: "DKK", name: "Danish Krone"),
    Currency(flag: "🇩🇴", code: "DOP", name: "Dominican Peso"),
    Currency(flag: "🇩🇿", code: "DZD", name: "Algerian Dinar"),
    Currency(flag: "🇪🇬", code: "EGP", name: "Egyptian Pound"),
    Currency(flag: "🇪🇷", code: "ERN", name: "Eritrean Nakfa"),
    Currency(flag: "🇪🇹", code: "ETB", name: "Ethiopian Birr"),
    Currency(flag: "🇪🇺", code: "EUR", name: "Euro"),
    Currency(flag: "🇫🇯", code: "FJD", name: "Fijian Dollar"),
    Currency(flag: "🇫🇰", code: "FKP", name: "Falkland Islands Pound"),
    Currency(flag: "🇬🇧", code: "GBP", name: "British Pound"),
    Currency(flag: "🇬🇪", code: "GEL", name: "Georgian Lari"),
    Currency(flag: "🇬🇭", code: "GHS", name: "Ghanaian Cedi"),
    Currency(flag: "🇬🇮", code: "GIP", name: "Gibraltar Pound"),
    Currency(flag: "🇬🇲", code: "GMD", name: "Gambian Dalasi"),
    Currency(flag: "🇬🇳", code: "GNF", name: "Guinean Franc"),
    Currency(flag: "🇬🇹", code: "GTQ", name: "Guatemalan Quetzal"),
    Currency(flag: "🇬🇾", code: "GYD", name: "Guyanese Dollar"),
    Currency(flag: "🇭🇰", code: "HKD", name: "Hong Kong Dollar"),
    Currency(flag: "🇭🇳", code: "HNL", name: "Honduran Lempira"),
    Currency(flag: "🇭🇷", code: "HRK", name: "Croatian Kuna"),
    Currency(flag: "🇭🇹", code: "HTG", name: "Haitian Gourde"),
    Currency(flag: "🇭🇺", code: "HUF", name: "Hungarian Forint"),
    Currency(flag: "🇮🇩", code: "IDR", name: "Indonesian Rupiah"),
    Currency(flag: "🇮🇱", code: "ILS", name: "Israeli New Sheqel"),
    Currency(flag: "🇮🇳", code: "INR", name: "Indian Rupee"),
    Currency(flag: "🇮🇶", code: "IQD", name: "Iraqi Dinar"),
    Currency(flag: "🇮🇷", code: "IRR", name: "Iranian Rial"),
    Currency(flag: "🇮🇸", code: "ISK", name: "Icelandic Króna"),
    Currency(flag: "🇯🇲", code: "JMD", name: "Jamaican Dollar"),
    Currency(flag: "🇯🇴", code: "JOD", name: "Jordanian Dinar"),
    Currency(flag: "🇯🇵", code: "JPY", name: "Japanese Yen"),
    Currency(flag: "🇰🇪", code: "KES", name: "Kenyan Shilling"),
    Currency(flag: "🇰🇬", code: "KGS", name: "Kyrgyzstani Som"),
    Currency(flag: "🇰🇭", code: "KHR", name: "Cambodian Riel"),
    Currency(flag: "🇰🇲", code: "KMF", name: "Comorian Franc"),
    Currency(flag: "🇰🇵", code: "KPW", name: "North Korean Won"),
    Currency(flag: "🇰🇷", code: "KRW", name: "South Korean Won"),
    Currency(flag: "🇰🇼", code: "KWD", name: "Kuwaiti Dinar"),
    Currency(flag: "🇰🇾", code: "KYD", name: "Cayman Islands Dollar"),
    Currency(flag: "🇰🇿", code: "KZT", name: "Kazakhstani Tenge"),
    Currency(flag: "🇱🇦", code: "LAK", name: "Lao Kip"),
    Currency(flag: "🇱🇧", code: "LBP", name: "Lebanese Lira"),
    Currency(flag: "🇱🇰", code: "LKR", name: "Sri Lankan Rupee"),
    Currency(flag: "🇱🇷", code: "LRD", name: "Liberian Dollar"),
    Currency(flag: "🇱🇸", code: "LSL", name: "Lesotho Loti"),
    Currency(flag: "🇱🇻", code: "LVL", name: "Latvian Lats"),
    Currency(flag: "🇱🇾", code: "LYD", name: "Libyan Dinar"),
    Currency(flag: "🇲🇦", code: "MAD", name: "Moroccan Dirham"),
    Currency(flag: "🇲🇩", code: "MDL", name: "Moldovan Leu"),
    Currency(flag: "🇲🇬", code: "MGA", name: "Malagasy Ariary"),
    Currency(flag: "🇲🇰", code: "MKD", name: "Macedonian Denar"),
    Currency(flag: "🇲🇲", code: "MMK", name: "Myanma Kyat"),
    Currency(flag: "🇲🇳", code: "MNT", name: "Mongolian Tugrik"),
    Currency(flag: "🇲🇴", code: "MOP", name: "Macanese Pataca"),
    Currency(flag: "🇲🇷", code: "MRO", name: "Mauritanian Ouguiya"),
    Currency(flag: "🇲🇺", code: "MUR", name: "Mauritian Rupee"),
    Currency(flag: "🇲🇻", code: "MVR", name: "Maldivian Rufiyaa"),
    Currency(flag: "🇲🇼", code: "MWK", name: "Malawian Kwacha"),
    Currency(flag: "🇲🇽", code: "MXN", name: "Mexican Peso"),
    Currency(flag: "🇲🇾", code: "MYR", name: "Malaysian Ringgit"),
    Currency(flag: "🇲🇿", code: "MZN", name: "Mozambican Metical"),
    Currency(flag: "🇳🇦", code: "NAD", name: "Namibian Dollar"),
    Currency(flag: "🇳🇬", code: "NGN", name: "Nigerian Naira"),
    Currency(flag: "🇳🇮", code: "NIO", name: "Nicaraguan Cordoba"),
    Currency(flag: "🇳🇴", code: "NOK", name: "Norwegian Krone"),
    Currency(flag: "🇳🇵", code: "NPR", name: "Nepalese Rupee"),
    Currency(flag: "🇳🇿", code: "NZD", name: "New Zealand Dollar"),
    Currency(flag: "🇴🇲", code: "OMR", name: "Omani Rial"),
    Currency(flag: "🇵🇦", code: "PAB", name: "Panamanian Balboa"),
    Currency(flag: "🇵🇪", code: "PEN", name: "Peruvian Nuevo Sol"),
    Currency(flag: "🇵🇬", code: "PGK", name: "Papua New Guinean Kina"),
    Currency(flag: "🇵🇭", code: "PHP", name: "Philippine Peso"),
    Currency(flag: "🇵🇰", code: "PKR", name: "Pakistani Rupee"),
    Currency(flag: "🇵🇱", code: "PLN", name: "Polish Zloty"),
    Currency(flag: "🇵🇾", code: "PYG", name: "Paraguayan Guarani"),
    Currency(flag: "🇶🇦", code: "QAR", name: "Qatari Riyal"),
    Currency(flag: "🇷🇴", code: "RON", name: "Romanian Leu"),
    Currency(flag: "🇷🇸", code: "RSD", name: "Serbian Dinar"),
    Currency(flag: "🇷🇺", code: "RUB", name: "Russian Ruble"),
    Currency(flag: "🇷🇼", code: "RWF", name: "Rwandan Franc"),
    Currency(flag: "🇸🇦", code: "SAR", name: "Saudi Riyal"),
    Currency(flag: "🇸🇧", code: "SBD", name: "Solomon Islands Dollar"),
    Currency(flag: "🇸🇨", code: "SCR", name: "Seychellois Rupee"),
    Currency(flag: "🇸🇩", code: "SDG", name: "Sudanese Pound"),
    Currency(flag: "🇸🇪", code: "SEK", name: "Swedish Krona"),
    Currency(flag: "🇸🇬", code: "SGD", name: "Singapore Dollar"),
    Currency(flag: "🇦🇨", code: "SHP", name: "Saint Helena Pound"),
    Currency(flag: "🇸🇱", code: "SLL", name: "Sierra Leonean Leone"),
    Currency(flag: "🇸🇴", code: "SOS", name: "Somali Shilling"),
    Currency(flag: "🇸🇷", code: "SRD", name: "Surinamese Dollar"),
    Currency(flag: "🇸🇹", code: "STD", name: "Sao Tome And Principe Dobra"),
    Currency(flag: "🇸🇾", code: "SYP", name: "Syrian Pound"),
    Currency(flag: "🇸🇿", code: "SZL", name: "Swazi Lilangeni"),
    Currency(flag: "🇹🇭", code: "THB", name: "Thai Baht"),
    Currency(flag: "🇹🇯", code: "TJS", name: "Tajikistani Somoni"),
    Currency(flag: "🇹🇲", code: "TMT", name: "Turkmenistan Manat"),
    Currency(flag: "🇹🇳", code: "TND", name: "Tunisian Dinar"),
    Currency(flag: "🇹🇴", code: "TOP", name: "Paanga"),
    Currency(flag: "🇹🇷", code: "TRY", name: "Turkish New Lira"),
    Currency(flag: "🇹🇹", code: "TTD", name: "Trinidad and Tobago Dollar"),
    Currency(flag: "🇹🇼", code: "TWD", name: "New Taiwan Dollar"),
    Currency(flag: "🇹🇿", code: "TZS", name: "Tanzanian Shilling"),
    Currency(flag: "🇺🇦", code: "UAH", name: "Ukrainian Hryvnia"),
    Currency(flag: "🇺🇬", code: "UGX", name: "Ugandan Shilling"),
    Currency(flag: "🇺🇸", code: "USD", name: "United States Dollar"),
    Currency(flag: "🇺🇾", code: "UYU", name: "Uruguayan Peso"),
    Currency(flag: "🇺🇿", code: "UZS", name: "Uzbekistani Som"),
    Currency(flag: "🇻🇪", code: "VEF", name: "Venezuelan Bolivar"),
    Currency(flag: "🇻🇳", code: "VND", name: "Vietnamese Dong"),
    Currency(flag: "🇻🇺", code: "VUV", name: "Vanuatu Vatu"),
    Currency(flag: "🇼🇸", code: "WST", name: "Samoan Tala"),
    Currency(flag: "🇨🇫", code: "XAF", name: "Central African CFA Franc"),
    Currency(flag: "🏝", code: "XCD", name: "East Caribbean Dollar"),
    Currency(flag: "🏳️", code: "XDR", name: "Special Drawing Rights"),
    Currency(flag: "🇧🇯", code: "XOF", name: "West African CFA Franc"),
    Currency(flag: "🇵🇫", code: "XPF", name: "CFP Franc"),
    Currency(flag: "🇾🇪", code: "YER", name: "Yemeni Rial"),
    Currency(flag: "🇿🇦", code: "ZAR", name: "South African Rand"),
    Currency(flag: "🇿🇲", code: "ZMW", name: "Zambian Kwacha")
]
