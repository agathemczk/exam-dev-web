-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2024 at 01:28 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manga`
--

-- --------------------------------------------------------

--
-- Table structure for table `mangas`
--

CREATE TABLE `mangas` (
  `id` int(10) NOT NULL,
  `titre` varchar(30) NOT NULL,
  `auteur` int(10) NOT NULL,
  `genre` int(10) NOT NULL,
  `publication` date NOT NULL,
  `personnage` int(10) NOT NULL,
  `note` float NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mangas`
--

INSERT INTO `mangas` (`id`, `titre`, `auteur`, `genre`, `publication`, `personnage`, `note`, `description`) VALUES
(1, 'Berserk', 1, 3, '1989-08-25', 1, 9.47, 'Guts, a former mercenary now known as the \"Black Swordsman,\" is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.\r\n\r\nSetting out on a dreadful quest riddled with misfortune, Guts, armed with a massive sword and monstrous strength, will let nothing stop him, not even death itself, until he is finally able to take the head of the one who stripped him—and his loved one—of their humanity.\r\n'),
(2, 'Vinland Saga', 2, 1, '2005-04-13', 3, 9.07, 'Thorfinn, son of one of the Vikings\' greatest warriors, is among the finest fighters in the merry band of mercenaries run by the cunning Askeladd, an impressive feat for a person his age. However, Thorfinn is not part of the group for the plunder it entails—instead, for having caused his family great tragedy, the boy has vowed to kill Askeladd in a fair duel. Not yet skilled enough to defeat him, but unable to abandon his vengeance, Thorfinn spends his boyhood with the mercenary crew, honing his skills on the battlefield among the war-loving Danes, where killing is just another pleasure of life.\r\n\r\nOne day, when Askeladd receives word that Danish prince Canute has been taken hostage, he hatches an ambitious plot—one that will decide the next King of England and drastically alter the lives of Thorfinn, Canute, and himself. Set in 11th-century Europe, Vinland Saga tells a bloody epic in an era where violence, madness, and injustice are inescapable, providing a paradise for the battle-crazed and utter hell for the rest who live in it.'),
(3, 'Monster', 3, 4, '1994-12-05', 5, 9.16, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf. In the end, Tenma decides to gamble his reputation by saving Johan, effectively leaving the mayor for dead.\r\n\r\nAs a consequence of his actions, hospital director Heinemann strips Tenma of his position, and Heinemann\'s daughter Eva breaks off their engagement. Disgraced and shunned by his colleagues, Tenma loses all hope of a successful career—that is, until the mysterious killing of Heinemann gives him another chance.\r\n\r\nNine years later, Tenma is the head of the surgical department and close to becoming the director himself. Although all seems well for him at first, he soon becomes entangled in a chain of gruesome murders that have taken place throughout Germany. The culprit is a monster—the same one that Tenma saved on that fateful day nine years ago.'),
(4, 'One Piece', 4, 5, '1997-07-22', 7, 9.22, 'Gol D. Roger, a man referred to as the \"King of the Pirates,\" is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the King of the Pirates is executed and the Great Age of Pirates begins.\r\n\r\nTwenty-two years later, a young man by the name of Monkey D. Luffy is ready to embark on his own adventure, searching for One Piece and striving to become the new King of the Pirates. Armed with just a straw hat, a small boat, and an elastic body, he sets out on a fantastic journey to gather his own crew and a worthy ship that will take them across the Grand Line to claim the greatest status on the high seas.\r\n'),
(5, 'Vagabond', 5, 1, '1998-09-03', 9, 9.25, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man, in both his appearance and his actions. His aggressive nature has won him the collective reproach and fear of his village, leading him and his best friend, Matahachi Honiden, to run away in search of something grander than provincial life. The pair enlist in the Toyotomi army, yearning for glory—but when the Toyotomi suffer a crushing defeat at the hands of the Tokugawa Clan at the Battle of Sekigahara, the friends barely make it out alive.\r\n\r\nAfter the two are separated, Shinmen returns home on a self-appointed mission to notify the Hon\'iden family of Matahachi\'s survival. He instead finds himself a wanted criminal, framed for his friend\'s supposed murder based on his history of violence. Upon being captured, he is strung up on a tree and left to die. An itinerant monk, the distinguished Takuan Soho, takes pity on the \"devil child,\" secretly freeing Shinmen and christening him with a new name to avoid pursuit by the authorities: Musashi Miyamoto.\r\n\r\nVagabond is the fictitious retelling of the life of one of Japan\'s most renowned swordsmen, the \"Sword Saint\" Musashi Miyamoto—his rise from a swordsman with no desire other than to become \"Invincible Under the Heavens\" to an enlightened warrior who slowly learns of the importance of close friends, self-reflection, and life itself.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auteur` (`auteur`),
  ADD KEY `genre` (`genre`),
  ADD KEY `personnage` (`personnage`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mangas`
--
ALTER TABLE `mangas`
  ADD CONSTRAINT `mangas_ibfk_1` FOREIGN KEY (`auteur`) REFERENCES `auteurs` (`id`),
  ADD CONSTRAINT `mangas_ibfk_2` FOREIGN KEY (`genre`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `mangas_ibfk_3` FOREIGN KEY (`personnage`) REFERENCES `personnages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
