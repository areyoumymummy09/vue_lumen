-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 09, 2025 at 11:53 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_lightbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `poster`, `created_at`, `updated_at`) VALUES
(1, 'Fearless', 'Fearless.jpeg', '2025-04-04 18:59:14', '2025-04-04 18:59:14'),
(2, 'Speak Now', 'Speak_Now.jpeg', '2025-04-04 18:59:14', '2025-04-04 18:59:14'),
(3, 'Red', 'Red.jpeg', '2025-04-04 18:59:14', '2025-04-04 18:59:14'),
(4, '1989', '1989.jpeg', '2025-04-04 18:59:14', '2025-04-04 18:59:14'),
(5, 'Reputation', 'Reputation.jpeg', '2025-04-04 18:59:14', '2025-04-04 18:59:14'),
(6, 'Lover', 'Lover.jpeg', '2025-04-04 18:59:14', '2025-04-04 18:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `album_intros`
--

CREATE TABLE `album_intros` (
  `id` int NOT NULL,
  `short_description` varchar(1200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `concert_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `album_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `album_intros`
--

INSERT INTO `album_intros` (`id`, `short_description`, `concert_image`, `album_id`, `created_at`, `updated_at`) VALUES
(1, 'Fearless (Taylor\'s Version) is the first of Taylor Swift\'s rerecorded albums, which she created to regain ownership of the six albums she created under Big Machine Records. It includes a new version of every song on Fearless Platinum Edition, along with standalone single “Today Was a Fairytale” and six songs she cut from the original 2008 Fearless album.\n\nOn February 11, 2021, Swift appeared on Good Morning America to announce her re-recording of “Love Story”, which came out that night at midnight, and Fearless.\n\nLater that morning, Swift posted a letter to fans on Instagram, thanking them for their support and expressing her excitement about the project. For her first five albums, she left hidden notes via capitalized letters in her album booklets, and she continued this tradition to hide the message “April Ninth” in the note, revealing the release date.', 'Concert_fearless.jpeg', 1, '2025-04-04 19:04:55', '2025-04-04 19:04:55'),
(2, 'Speak Now is a song by Taylor Swift which expresses her wish to stop her ex-boyfriend from marrying the wrong person. It was inspired by a dream Taylor had about one of her exes, and from a conversation with a friend, in which their ex boyfriend was getting married to someone else as well. The song is meant to be a metaphor for not being scared to speak your mind before it\'s too late. It is speculated that the song is about two members of Paramore, Hayley Williams and Josh Farro.', 'Concert_Speak_now.jpeg', 2, '2025-04-04 19:06:02', '2025-04-04 19:06:02'),
(3, 'Taylor Swift\'s fourth studio album, released in October 2012, was inspired by intense emotions and feelings that Swift believes correlate with the color red, including frustration, romance, disappointment, and nostalgia. Swift broadened the spectrum with a Target-exclusive deluxe edition.\r\n\r\nThe Red era kicked off with a livestream in August 2012, in which Swift announced the album and debuted “We Are Never Ever Getting Back Together,” which became her first #1 on the Billboard Hot 100. Swift admitted during the livestream that she wrote over thirty songs for the album. She later gave one particular reject, “Babe,” to Sugarland, and she featured on the track.', 'Concert_Red.jpg', 3, '2025-04-04 19:06:02', '2025-04-04 19:06:02'),
(4, '1989 was Swift\'s official entrance to the pop music scene, and it cemented her status as a musical titan. It was the only album of 2014 to sell over a million copies in its first week, and spent five non-consecutive weeks at #1.\r\n\r\nAfter her 2012 record Red didn\'t win the Grammy for Album Of The Year, Swift stepped back and decided she may have a better chance if she changed her sound. That night, she vowed to go in a completely different direction in hopes that her next album would win the award — and it did, making Swift both the first woman to win the award twice and the first to win it for two genres, since her 2008 record, Fearless, won in 2010.\r\n', 'Concert_1989.jpg', 4, '2025-04-04 19:07:08', '2025-04-04 19:07:08'),
(5, 'The Reputation Prologue is the introduction to reputation, and is featured on the first page of both the CD booklet and in the Target-exclusive magazines. Here, Taylor talks about the different ways a person is known or perceived by other people, based on the version of themself that the person has chosen to show.', 'Concert_reputation.jpeg', 5, '2025-04-04 19:07:08', '2025-04-04 19:07:08'),
(6, 'The full album tracklist was allegedly leaked by iTunes on August 14, two days before the title track “Lover” was officially released. Two days later, Taylor Swift officially announced the tracklist in multiple Instagram posts, confirming what the leak had already revealed two days earlier.', 'concert_Lover.jpeg', 6, '2025-04-04 19:07:32', '2025-04-04 19:07:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_intros`
--
ALTER TABLE `album_intros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `album_intros`
--
ALTER TABLE `album_intros`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
