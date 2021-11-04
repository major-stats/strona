-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Paź 2021, 11:07
-- Wersja serwera: 10.4.18-MariaDB
-- Wersja PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `major_stats`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drużyna`
--

CREATE TABLE `drużyna` (
  `id` int(4) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  `trener` varchar(40) NOT NULL,
  `igl` varchar(40) NOT NULL,
  `sniper` varchar(40) NOT NULL,
  `rifler` varchar(40) NOT NULL,
  `support` varchar(40) NOT NULL,
  `lurker` varchar(40) NOT NULL,
  `rezerwowy` varchar(40) NOT NULL,
  `logo` text NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `drużyna`
--

INSERT INTO `drużyna` (`id`, `nazwa`, `region`, `trener`, `igl`, `sniper`, `rifler`, `support`, `lurker`, `rezerwowy`, `logo`, `opis`) VALUES
(1, 'Astralis', 'Europe', 'Danny \"zonic\" Sørensen', 'Lukas \"gla1ve\" Rossander', 'Philip \"Lucky\" Ewald', 'Peter \"dupreeh\" Rasmussen', 'Andreas \"Xyp9x\" Højsleth', 'Emil \"Magisk\" Reif', 'Lucas \"Bubzkji\" Andersen', 'https://img-cdn.hltv.org/teamlogo/9bgXHp-oh1oaXr7F0mTGmd.svg?ixlib=java-2.1.0&s=f567161ab183001be33948b98c4b2067', ' Duńska profesjonalna organizacja e-sportowa, założona w styczniu 2016 przez byłych członków amerykańskiej drużyny Team SoloMid. Do pierwszego składu, wtedy jeszcze drużyny znanej jako „Team Question Mark” należeli René „cajunb” Borg, Nicolai „dev1ce” Reedtz, Peter „Dupreeh” Rasmussen, Finn „Karrigan” Andersen, Andreas „Xyp9x” Hølsleth oraz ich trener Danny „zonic” Sørensen.Czeterokortny zwycięzca najbradziej prestiżowego turnieju CS:GO jakim jest \"Major\".'),
(2, 'Virtus-Pro', 'CIS', 'Dastan \"dastan\" Akbayev', 'Dzhami \"JAME\" Ali', 'Tımýr \"buster\" Tólepov', 'Evgeny \"FL1T\" Lebedev', 'Alekseı \"qikert\" Golýbev', 'Mareks \"YEKINDAR\" Gaļinskis', 'Sanjar \"SANJI\" Kuliev', 'https://liquipedia.net/counterstrike/File:Virtus.pro_2019_allmode.png', 'Virtus.pro jest rosyjską organizacją e-sportową, która działa nie tylko w CS:GO, ale w wielu innych grach takich jak League of Legends czy World of Tanks. Co do historii drużyny w CS:GO to sięga ona 2012 roku, gdzie w skład wchodzili: kUcheR, ANGE1, AdreN, evil oraz craft1k. Następnie craft1k oraz evil opuścili drużynę, a na ich miejsce dołączyli Dosia i Fox. W roku 2013 AdreN-a zastąpił GuardiaN, a następnie organizacja straciła swój skład.\r\nW 2014 roku, a dokładniej w styczyniu został ogłoszony nowy, polski już skład, w który wchodzili: Jarosław \"pasha\" Jarząbkowski, Paweł \"byali\" Bieliński, Janusz \"Snax\" Pogorzelski, Wiktor \"TaZ\" Wojtas i Filip \"NEO\" Kubski. Ich jednym z pierwszych, większych sukcesów na scenie profesjonalnej pod nazwą Virtus.pro było zwycięstwo w Katowicach, gdzie pokonali Ninjas in Pijamas i zgarnęli $100 000.Byli nazywani \"złotą piątką\" jednocześnie będąc najbardziej utytułowaną Polską drużyną CS:GO. '),
(3, 'Natus Vincere', 'CIS', 'Andrii \"B1ad3\" Gorodenskyi', 'Kirill \"Boombl4\" Mikhailov', 'Oleksandr \"s1mple\" Kostyliev', 'Ilya \"Perfecto\" Zalutskiy', 'Denis \"Denis Sharipov\" Sharipov', 'Valerii \"b1t\" Vakhovskyi', 'Egor \"flamie\" Vasilev', 'https://liquipedia.net/counterstrike/File:Natus_Vincere_2021_lightmode.png', 'Nazwa organizacji pochodzi z języka łacińskiego i bezpośrednio po przetłumaczeniu oznacza \"Urodzony po to by wygrać\". Od początku tej organizacji zawsze byli w czołówce, jednak dopiero po dołączeniu Oleksandr \"s1mple\" Kostyliev stali się prawdziwą potęgą na scenie CS:GO, a aktualnie są faworytami we wzsystkich dużych turniejach.'),
(4, 'AGO', 'Europe', 'Mikołaj \"miNIr0x\" Michałków', 'Denis \"Grashog\" Hristov', 'Miłosz \"mhL\" Knasiak', 'Maciej \"F1KU\" Miklas', 'Damian \"Furlan\" Kislowski', 'Szymon \"kRaSnaL\" Mrozek', 'Eryk \"leman\" Kocęba', 'https://liquipedia.net/counterstrike/File:X-kom_AGO.png', 'x-kom AGO to profesjonalna, polska organizacja e-sportowa. Jest jedną z najsilniejszych polskich organizacji, prezentują równy poziom. W 2018 roku na jednym z najważniejszych turniejów ograli Fnatic 2:1 zwyciężając pierwszą mapę 16:0!'),
(5, 'Anonymo', 'Europe', 'Adrian \"imd\" Peiper', 'Janusz \"Snax\" Pogorzelski', 'Michał \"snatchie\" Rudzki', 'Karol \"rallen\" Rodowicz', 'Paweł \"innocent\" Mocek', 'Kacper \"Kylar\" Walukiewicz', 'Patryk \"Demho\" Tomaszewski', 'https://img-cdn.hltv.org/teamlogo/CPMNyI3CHuAdN8M-UNvr04.png?ixlib=java-2.1.0&w=50&s=ff5f16b16796c9f70b2f695b10c8ef05', 'Anonymo jest to świeża drużyna na polskim podwórku, która powstała w styczniu 2021 roku miała być Polskim SUPER-TEAMEM jednak europejska scena szybko zweryfikowała ich możliwości. W aktualnym składzie grają dopiero 3 tygodnie, jednak wierzą że tym składem mogą osiągnąć wiele!'),
(6, 'Renegades', 'Oceania', 'David \'Kingfisher\' Kingsford', 'Joshua \"INS\" Potter', 'Alistair \"aliStair\" Johnston', 'Simon \"Sico\" Williams', 'Liam \"malta\" Schembri', 'Jordan \"Hatz\" Bajic', 'Ollie \"DickStacy\" Tierney', 'https://liquipedia.net/commons/images/thumb/6/68/Renegades_2019_allmode_full.png/600px-Renegades_2019_allmode_full.png', 'Profesjonalna drużyna e-sportowa z Australii, gdzie zdominowali całkowicie rodzime rozgrywki, na swoim koncie posiadają małe ogólnoświatowe sukcesy, jednak aktualny ich poziom gry nie pozwala na równą rywalizacje z najlepszymi zespołami globu.'),
(7, 'G2', 'Europe', 'Damien \'maLeK\' Marcel', 'Nemanja \"nexa\" Isaković', 'François \"AmaNEk\" Delaunay', 'Audric \"JaCkz\" Jug', 'Nemanja \"huNter\" Kovač', 'Nikola \"NiKo\" Kovač', 'Kenny \'kennyS\' Schrub', 'https://liquipedia.net/commons/images/thumb/4/4b/G2_Esports_2020_lightmode.png/600px-G2_Esports_2020_lightmode.png', 'Profesjonalna organizacja e-sportowa, która pod swoimi skrzydłami ma świetny europejski skład. Organizacja jest zaangażowana w rywalizację w wielu grach e-sportowych, natomiast ich przygoda zaczęła się właśnie w CS:GO. W swojej historii posiadali większość graczy nacji Francuskiej natomiast w roku 2014 był również polski akcent.'),
(8, 'Team Liquid', 'North America', 'Eric \'adreN\' Hoag', 'Gabriel \"FalleN\" Toledo', 'Jacky \"Stewie2K\" Yip', 'Keith \"NAF\" Markovic', 'Michael \"Grim\" Wince', 'Jonathan \"EliGE\" Jablonowski', '', 'https://liquipedia.net/commons/images/thumb/e/ee/Team_Liquid_2020_full_lightmode.png/600px-Team_Liquid_2020_full_lightmode.png', 'Profesjonalna organizacja e-sportowa z Ameryki Północnej, która była jedną z pierwszych w tym regionie. Swoje największe sukcesy na arenie międzynarodowej osiągali na przestrzeni lat: 2015-2018. Jednak po niedawnych roszadach w składzie są uważani za jednych z faworytów zbliżającego się turnieju PGL Major w Sztokholmie, czy podołają? '),
(9, 'Team Vitality', 'Europe', 'Rémy \"XTQZZZ\" Quoniam', 'Dan \"apEX\" Madesclaire', 'Mathieu \"ZywOo\" Herbaut', 'Jayson \"Kyojin\" Nguyen Van', 'Richard \"shox\" Papillon', 'Kévin \"misutaaa\" Rabier', 'Nabil \"Nivera\" Benrlitom', 'https://liquipedia.net/commons/images/thumb/5/55/Team_Vitality_2021_allmode.png/600px-Team_Vitality_2021_allmode.png', 'Profesjonalna organizacja e-sportowa, która posiada w pełni francuski skład. Regularnie od momentu powstania organizacji osiągają większe lub mniejsze sukcesy na arenie międzynarodowej, jednak dopiero po dołączeniu Mathieu \"ZywOo\" Herbaut czyli najlepszego zawodnika 2018 roku wg serwisu HLTV.org stali się prawdziwą potęgą na scenie Europejskiej jak i światowej.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `drużyna`
--
ALTER TABLE `drużyna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `drużyna`
--
ALTER TABLE `drużyna`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
