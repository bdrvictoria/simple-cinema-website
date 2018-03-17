-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14 Feb 2018 la 17:13
-- Versiune server: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id4637639_cinemadb`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `descr` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `movies`
--

INSERT INTO `movies` (`id`, `descr`) VALUES
(1, 'Impins de la spate de increderea in omenire pe care si-a recapatat-o si inspirat de gestul de altruism facut de Superman, Bruce Wayne se bucura de ajutorul unui aliat descoperit recent, Diana Prince, pentru a infrunta o amenintare chiar si mai mare. Impreuna, Batman si Wonder Woman lucreaza rapid pentru a gasi si a recruta noi metaoameni pe care sa-i uneasca intr-o unitate de elita de super eroi capabila sa faca fata oricarei amenintari. Insa in ciuda formarii acestei Ligi a Dreptatii realizata din super eroi, este posibil ca acest lucru sa se fi intamplat putin prea tarziu pentru a mai reusi sa salveze planeta de un asalt cu proportii catastrofice.'),
(2, 'Bazat pe bestseller-ul omonim, filmul  transpune pe marile ecrane povestea emotionanta a lui August Pullman, un copil diferit, dar cu o inima uriasa. Pentru ca s-a nascut cu un chip diferit, a fost ferit de sistemul public de invatamant, insa acum Auggie se incapataneaza sa intre in clasa a V-a la o scoala publica, unde va deveni un fel de erou pentru colegi.'),
(3, 'Amplasat in mediul rural sud-american in timpul celui de-al Doilea Razboi Mondial, filmul spune o poveste epica a doua familii indreptate una impotriva celeilalte de o ierarhie sociala, nemiloasa, si totusi legate impreuna de terenul comun al Deltei Mississippi. Familia McAllan este recent mutata din civilizatia linistita a Memphisului si nepregatita pentru cerintele dure ale agriculturii. In ciuda viselor grandioase ale lui Henry, sotia sa, Laura, se lupta sa-si pastreze increderea in sotul ei, cu riscul de a pierde. Intre timp, Hap si Florence Jackson, care au lucrat terenul timp de generatii, se lupta cu curaj si construiasca un mic vis pe cont propriu, in ciuda barierelor sociale riguros aplicate. Razboiul de peste cap planurile ambelor familii, in timp ce prietenii lor apropiati, Jamie McAllan si Ronsel Jackson, construiesc o prietenie rapida, dar dificila, care provoaca realitatile brutale ale regiunii in care traiesc.'),
(4, 'In the last store in a defunct shopping mall, 91-year-old Sonia Warshawski - great-grandmother, businesswoman, and Holocaust survivor - runs the tailor shop she\'s owned for more than thirty years. But when she\'s served an eviction notice, the specter of retirement prompts Sonia to revisit her harrowing past as a refugee and witness to genocide. A poignant story of generational trauma and healing, BIG SONIA also offers a laugh-out-loud-funny portrait of the power of love to triumph over bigotry, and the power of truth-telling to heal us all.'),
(5, ' Pe vremuri un chef promitator, Charlie a ajuns un tanar de 20 de ani lipsit de motivatie care inca locuieste cu mama sa si cu tatal sau vitreg. Reuseste sa isi gaseasca un loc de munca la un teatru local si isi petrece majoritatea din timp in compania celui mai bun prieten al sau, Ben. Viata sa capata o turnura neprevazuta in momentul in care o cunoaste pe Amber. Problema este ca Amber are propriile sale preocupari pentru a-l baga in seama. Are un iubit si se gandeste serios sa se mute la New York. Cu conflicte dupa conflicte in viata sa, va reusi sa gaseasca Charlie calea cea buna?'),
(6, 'Un jaf urmat de o crima provoaca haos in randurile localnicilor dintr-un orasel din Alaska. Doua femei au ramas vaduve in urma crimei savarsite de un prieten comun, Sam. Sam este un singuratic, un fost campion la rodeo, decis sa lase violenta in urma sa. Insa, ceva se intampla si Sam se lasa purtat de val, ucide doi barbati. Secrete teribile ies la iveala, violenta este din ce in ce mai prezenta in micul oras si oamenii din oras sunt socati de actul de violenta savarsit de Jack.'),
(7, 'Emily, un interpret talentat, dar greu de clasificat, se intoarce acasa la Austin, cand un membru al familiei se imbolnaveste si se gaseste in situatia dificila de a ramane impreuna cu prietena sa uimitoare.'),
(8, 'Cele trei prietene si mame, Amy, Kiki si Carla sunt epuizate odata cu sosirea sarbatorilor de Craciun. Si inca mai au o multime de lucruri de facut. Descurajate de nenumaratele sarcini de dus la bun sfarsit, cele trei decid sa faca lucrurile in propriul stil, ca anul acesta sa simta si ele spiritul de Craciun, sa nu mai fie stresate. Insa situatia se complica atunci cand mamele lor decid sa le viziteze tocmai de Craciun. Vor trebui sa se faca respectate in propria lor casa. Este Craciunul, mamele preiau controlul asupra situatiei! '),
(9, 'Christine \"Lady Bird\" MacPherson este o liceu senior de la partea gresita a pistelor. Ea doreste aventura, sofisticare si oportunitate, dar nu gaseste nimic din aceasta in liceul sau catolic din Sacramento. LADY BIRD urmeaza anul senior al personajului de titlu an liceu, inclusiv prima ei dragoste, participarea la jocul scolar si, cel mai important, candidatul la facultate.');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `seats`
--

CREATE TABLE `seats` (
  `id` int(11) NOT NULL,
  `one` int(11) NOT NULL DEFAULT '0',
  `two` int(11) NOT NULL DEFAULT '0',
  `three` int(11) NOT NULL DEFAULT '0',
  `four` int(11) NOT NULL DEFAULT '0',
  `five` int(11) NOT NULL DEFAULT '0',
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `seats`
--

INSERT INTO `seats` (`id`, `one`, `two`, `three`, `four`, `five`, `movie_id`) VALUES
(1, 1, 0, 1, 1, 0, 1),
(2, 0, 0, 0, 0, 0, 1),
(3, 0, 0, 0, 1, 0, 1),
(4, 0, 1, 0, 0, 0, 1),
(5, 0, 0, 0, 0, 0, 1),
(6, 1, 1, 1, 0, 0, 2),
(7, 0, 0, 0, 0, 0, 2),
(8, 0, 0, 0, 0, 0, 2),
(9, 0, 0, 0, 0, 0, 2),
(10, 0, 0, 0, 0, 0, 2),
(11, 0, 0, 0, 0, 0, 3),
(12, 0, 0, 0, 0, 0, 3),
(13, 0, 0, 0, 0, 0, 3),
(14, 0, 0, 0, 0, 0, 3),
(15, 0, 0, 0, 0, 0, 3),
(16, 0, 0, 0, 0, 0, 4),
(17, 0, 0, 0, 0, 0, 4),
(18, 0, 0, 1, 0, 0, 4),
(19, 0, 0, 0, 0, 0, 4),
(20, 0, 0, 0, 0, 0, 4),
(21, 0, 0, 0, 0, 0, 5),
(22, 0, 0, 0, 0, 0, 5),
(23, 0, 0, 0, 0, 0, 5),
(24, 0, 0, 0, 0, 0, 5),
(25, 0, 0, 0, 0, 0, 5),
(26, 0, 0, 0, 0, 0, 6),
(27, 0, 0, 0, 0, 0, 6),
(28, 0, 0, 0, 0, 0, 6),
(29, 0, 0, 0, 0, 0, 6),
(30, 0, 0, 0, 0, 0, 6),
(31, 0, 0, 0, 0, 0, 7),
(32, 0, 0, 0, 0, 0, 7),
(33, 0, 0, 0, 0, 0, 7),
(34, 0, 0, 0, 0, 0, 7),
(35, 0, 0, 0, 0, 0, 7),
(36, 0, 0, 0, 0, 0, 8),
(37, 0, 0, 0, 0, 0, 8),
(38, 0, 0, 0, 0, 0, 8),
(39, 0, 0, 0, 0, 0, 8),
(40, 0, 0, 0, 0, 0, 8),
(41, 1, 0, 0, 0, 0, 9),
(42, 0, 0, 0, 0, 0, 9),
(43, 0, 0, 0, 0, 0, 9),
(44, 0, 0, 0, 0, 0, 9),
(45, 0, 0, 0, 0, 1, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
