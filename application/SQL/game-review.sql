-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 09:23 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game-review`
--

-- --------------------------------------------------------

--
-- Table structure for table `activereviews`
--

--Sources for reviews are from Steam, most games added don't have them
--Sources are in the gameBlurb of the Activereview
--Images are sourced from https://www.igdb.com/

CREATE TABLE `activereviews` (
  `ID` int(11) NOT NULL,
  `GameName` varchar(250) NOT NULL,
  `GameBlurb` longtext NOT NULL,
  `GameReview` longtext NOT NULL,
  `GameComments_YN` varchar(1) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `ReviewImage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `activereviews`
--

INSERT INTO `activereviews` (`ID`, `GameName`, `GameBlurb`, `GameReview`, `GameComments_YN`, `slug`, `ReviewImage`) VALUES
(1, 'Borderlands 3', 'This text was retrieved from the database.', 'This is a test review of the game.', 'Y', 'borderlands-3', 'borderlands-3.jpg'),
(17, 'Borderlands 3', 'This review is by user Jemini on Steam', 'I\'d still recommend for the $30 sale and the vastly improved gunplay and abilities. But (and it\'s a long list of buts) the humor isn\'t there; often flat or annoying. The returning cast of characters is small and bland and the new ones unremarkable. The menus are beyond annoying. Parts of BL3 are tiring they\'re so dull. It\'s only the slick gunplay and environments that are keeping me compelled. Exploration will now reward you with hidden and challenging fights, or pieces of a map leading to treasure. Mantling is a new mechanic that introduces platforming to ledges and surfaces a la Mirror\'s Edge in order to find loot. And there are a lot of loot containers. Too much, as most are just small ammo caches. And, my favorite weapon type, sniper rifles just kind of...suck. (My gameplay has relied on an early pistol I found that reads \"500% Crit Damage\" which has created a really fun loop of 1-hit kills as long as I can land a critical hit. My other weapons supplement the pistol\'s low raw-damage. That goes to show that weapon versatility can still have a significant impact on gameplay if you choose to pursue it.)\r\n\r\nThe character I chose, Zane, has a playstyle of run-and-gun. Literally. He gets bonuses from moving while shooting. And the option to equip one of three skills (or two if you\'re willing to sacrifice the ability to use grenades) makes combat much more dynamic with more options than previous entries (I have a damage-amplifying shield to put down when things get too chaotic and a flying turret to help finish off kills all while never stopping to stand still). Gun-specific skill trees are gone, however, as are gun-specific skills which I was sad about because I liked being challenged to find a gun type and stick with it for its specific bonuses.\r\n\r\nWhile the complaints from other reviews are beyond valid, one thing I don\'t see people talk about is the abysmal UX. The HUD is fine- no complaints. It\'s bright, poppy, and I never felt that I didn\'t know what was going on in combat. But navigating menus is a trainwreck. Visually they\'re so cluttered, so compact, that it\'s hard to read and absorb any information. Navigation never feels easy, only clunky. The feats/challenges from BL2 are back- the ones that would give you challenge points to spend on tiny stat upgrades but as far as I can tell there aren\'t any points to spend. I say that without confidence because even the navigation to see these challenges is absurd, and they pop up as notifications for finishing/almost finishing X task so it\'s not like they\'re easy to ignore. To see your progress you no longer navigate to a tab in the menu. Instead, you open the map, press X once to switch from local view to planet view, then X again to switch from planet to galaxy view, then select the challenges tab where the categorization and grouping of the skills are terrible. And you\'re never told this. It\'s so unintuitive that I imagine most players find it by accident or through several minutes of trial and error. Navigating back to check progress is a pain.\r\n\r\nBut the absolute worst thing is the inability to look at multiple quests on your map. To see where your objective is on the map you open the menu/press M. But if you want to see the locations of any other objectives you must either close the menu and use the hotkeys to switch quests, or navigate to the Quests tab and select a different quest then return to the map. And looking at the description of a quest no longer tells you what area the quest is located in. Think of how many sidequests there are in Borderlands and how you look at the map to plan the most efficient route to tackle them all in. Well, no longer.\r\n\r\nThe gameplay has been significantly improved and expanded. New enemies and new enemy types, new attacks, new gun behaviors, new abilities (three unique ones per character), new mantling, new sliding, new vehicle parts, new skill trees offering 2 or 3 different playstyles per character- the gameplay feels like a proper sequel. It feels fresh and rejuvenated. But navigating the UI is painful. And dear god is the story dull. The writing is flat; it\'s jokes lazy, forced, or outdated. It\'s that exhausting kind of dull, like it\'s not even worth the energy to explain how empty it is. Most of all- it\'s just not charming. So Borderlands 3 will forever be one of those \"exception\" games, one with an asterisk. The kind a friend would recommend heartily but with a \"as long as you ignore...\"', 'Y', 'borderlands-3', 'borderlands-3.jpg'),
(18, 'Tom Clancy\'s Rainbow Six: Siege', 'user Sharn\r\nfrom Steam', 'Amazing overall game.\r\nPros:\r\n+ Great optimization\r\n+ Almost flawless netcode\r\n+ Good balance between various operators\r\n+ Nice variety of maps, equipment and operators, that is going to suit many types of gameplay.\r\n+ Interesting game mechanics that rewards thinking \"outside of box\", knowledge of maps and operators.\r\n+ Smooth camera and animations.\r\n\r\nCons:\r\n- Some operator\'s hitboxes are a bit broken\r\n- Weapon/Operator\'s skins that are breaking the game aesthetics. But they are very expensive, so this con is nothing major.\r\n- Steep learning curve. If you\'re not willing to sunk some time to learn how to play this game, especially if you don\'t have experience in tactical FPS\'s this game might make you frustrated quite a bit. Fortunately YouTube/Steam community has plenty of guides that are going to help you in it!\r\n\r\nConclusion:\r\nI haven\'t liked this game since it came out. I always found it to be too \"Overwatch look-a-like\" but oh boy was I wrong! If you were/are like me I urge you to try this game(Especially when It\'s on HUGE sale until pretty much end of the March) you probably won\'t regret it. I recommend this game to any tactical FPS games fan. It will conquer your heart with it\'s gameplay loop, that will probably keep you hooked on for hours on end.\r\n\r\nThank you for taking your time reading this review, and I\'m very happy if it had helped you(even a bit) to make the decision about sinking your time/money into this game', '', 'rainbow-six-siege', 'rainbow-six-siege.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `gameID` int(11) NOT NULL,
  `gameName` varchar(250) COLLATE utf8_bin NOT NULL,
  `gameBlurb` longtext COLLATE utf8_bin NOT NULL,
  `gameSlug` varchar(250) COLLATE utf8_bin NOT NULL,
  `gameImage` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`gameID`, `gameName`, `gameBlurb`, `gameSlug`, `gameImage`) VALUES
(1, 'Borderlands 3', 'The original shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Blast through new worlds and enemies as one of four new Vault Hunters. Play solo or with friends to take on insane enemies, score loads of loot and save your home from the most ruthless cult leaders in the galaxy.', 'borderlands-3', 'borderlands-3.jpg'),
(2, 'Days Gone', 'Days Gone is an open-world action-adventure game set in a harsh wilderness two years after a devastating global pandemic. Play as Deacon St. John, a Drifter and bounty hunter who rides the broken road, fighting to survive while searching for a reason to live.\r\n\r\nAt its core, Days Gone is about survivors and what makes them human: desperation, loss, madness, betrayal, friendship, brotherhood, regret, love – and hope. It’s about how even when confronted with such enormous tragedy they find a reason to live. Hope never dies.', 'days-gone', 'days-gone.jpg'),
(4, 'Minecraft', 'Minecraft is an open world game that has no specific goals for the player to accomplish, allowing players a large amount of freedom in choosing how to play the game however, there is an achievement system. The gameplay by default is first person, but players have the option to play in third person mode. The core gameplay revolves around breaking and placing blocks. The game world is essentially composed of rough 3D objects—mainly cubes—that are arranged in a fixed grid pattern and represent different materials, such as dirt, stone, various ores, water, and tree trunks. While players can move freely across the world, objects and items can only be placed at fixed locations relative to the grid. Players can gather these material blocks and place them elsewhere, thus allowing for various constructions.', 'minecraft', 'minecraft.jpg'),
(5, 'Tom Clancy\'s Rainbow Six: Siege', 'Inspired by the reality of counter terrorist operatives across the world, Rainbow Six Siege invites players to master the art of destruction. Intense close quarters confrontations, high lethality, tactics, team play, and explosive action are at the center of the experience. The multiplayer gameplay of Rainbow Six Siege sets a new bar for intense firefights and expert strategy in the rich legacy of past Rainbow Six games.', 'rainbow-six-siege', 'rainbow-six-siege.jpg'),
(6, 'Destiny 2', 'In Destiny 2, the last safe city on Earth has fallen and lays in ruins, occupied by a powerful new enemy and his elite army, the Red Legion. Every player creates their own character called a “Guardian,” humanity’s chosen protectors. As a Guardian in Destiny 2, players must master new abilities and weapons to reunite the city’s forces, stand together and fight back to reclaim their home.\r\n\r\nIn Destiny 2 players will answer this call, embarking on a fresh story filled with new destinations around our solar system to explore, and an expansive amount of activities to discover. There is something for almost every type of gamer in Destiny 2, including gameplay for solo, cooperative and competitive players set within a vast, evolving and exciting universe.', 'destiny-2', 'destiny-2.jpg'),
(7, 'Slay the Spire', 'Ascend an evil, living tower in the roguelike deck-building game Slay the Spire. Select from hundreds of different cards and powerful ancient relics as you craft a unique deck and fight your way to the top!', 'slay-the-spire', 'slay-the-spire.jpg'),
(8, 'Pokémon Shield', 'The world of Pokémon expands to include the Galar region in Pokémon Sword and Pokémon Shield!', 'pokemon-shield', 'pokemon-shield.jpg'),
(9, 'Fortnite', 'Fortnite is the living, action building game from the developer formerly known as Epic MegaGames. You and your friends will lead a group of Heroes to reclaim and rebuild a homeland that has been left empty by mysterious darkness only known as \"the Storm\".\r\n\r\nBand together online to build extravagant forts, find or build insane weapons and traps and protect your towns from the strange monsters that emerge during the Storm. In an action experience from the only company smart enough to attach chainsaws to guns, get out there to push back the Storm and save the world. And don\'t forget to loot all the things.', 'fortnite', 'fortnite.jpg'),
(10, 'League of Legends', 'League of Legends is a fast-paced, competitive online game that blends the speed and intensity of an RTS with RPG elements. Two teams of powerful champions, each with a unique design and playstyle, battle head-to-head across multiple battlefields and game modes. With an ever-expanding roster of champions, frequent updates and a thriving tournament scene, League of Legends offers endless replayability for players of every skill level.', 'league-of-legends', 'league-of-legends.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gamescomments`
--

CREATE TABLE `gamescomments` (
  `UID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ReviewID` int(11) NOT NULL,
  `UserComment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `gamescomments`
--

INSERT INTO `gamescomments` (`UID`, `UserID`, `ReviewID`, `UserComment`) VALUES
(1, 1, 1, 'This is a comment that was generated manually in the database.'),
(2, 1, 1, 'Comment added from web page'),
(10, 0, 1, ''),
(11, 0, 1, ''),
(12, 0, 1, ''),
(13, 1, 10, 'fgsdfsdf'),
(14, 1, 3, 'xcvxcvxcv'),
(15, 1, 3, 'sfas%20sad'),
(16, 1, 10, 'Hi'),
(17, 1, 10, 'You can have spaces and spe(A!| charaters!'),
(18, 1, 7, 'Hi'),
(19, 1, 8, 'Trying to gete the comments to show after typing'),
(20, 1, 8, 'hyughg'),
(21, 1, 4, 'ghf'),
(22, 1, 5, 'gfyhgjhkj'),
(23, 1, 3, 'hbvhbh'),
(24, 1, 3, 'gfgfhgfdfffffffffffffff'),
(25, 1, 3, 'IT\'S WOOOOOOOOOORRRRRRRRRKKKING'),
(26, 1, 11, 'uhghgh'),
(27, 1, 11, 'buggyhkjnkj'),
(28, 1, 1, 'ugyhbhbbggg'),
(29, 1, 1, 'hughgbjbbbbnnn'),
(30, 1, 7, ''),
(31, 0, 1, 'hkghkjhkj'),
(32, 0, 1, 'hgfhf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `UserPassword` varchar(250) NOT NULL,
  `DarkMode` int(11) NOT NULL,
  `isAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `UserName`, `UserPassword`, `DarkMode`, `isAdmin`) VALUES
(1, 'Lecturer', 'Example', 1, 1),
(2, 'John', 'John', 1, 0),
(3, 'Dave', 'Hello', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activereviews`
--
ALTER TABLE `activereviews`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameID`);

--
-- Indexes for table `gamescomments`
--
ALTER TABLE `gamescomments`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `UID` (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activereviews`
--
ALTER TABLE `activereviews`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gamescomments`
--
ALTER TABLE `gamescomments`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
