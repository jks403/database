-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2019 at 10:52 PM
-- Server version: 10.2.26-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joshuaka_books`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `height` int(11) NOT NULL,
  `publisher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre`, `height`, `publisher`) VALUES
(6, 'bella&#39;s book', 'Bintu from Telecom', 'love story', 5, 'Thermodynamics'),
(7, 'Integrations of the Martians from Mars to Earth', 'Mr. Beaudry', 'history', 217, 'Orient Blackswan'),
(9, 'Image Processing & Mathematical Morphology', 'Shih, Frank', 'signal_processing', 241, 'CRC'),
(10, 'The rising Empire ', 'Joshua Kane Stewart', 'Victorious Thinking', 1123, 'Kane Doggy Publishing'),
(11, 'Data Scientists at Work', 'Sebastian Gutierrez', 'data_science', 230, 'Apress'),
(12, 'Slaughterhouse Five', 'Vonnegut, Kurt', 'fiction', 198, 'Random House'),
(13, 'Birth of a Theorem', 'Villani, Cedric', 'mathematics', 234, 'Bodley Head'),
(14, 'Structure & Interpretation of Computer Programs', 'Sussman, Gerald', 'computer_science', 240, 'MIT Press'),
(15, 'Age of Wrath, The', 'Eraly, Abraham', 'history', 238, 'Penguin'),
(16, 'Trial, The', 'Kafka, Frank', 'fiction', 198, 'Random House'),
(17, 'Statistical Decision Theory\'', 'Pratt, John', 'data_science', 236, 'MIT Press'),
(18, 'Data Mining Handbook', 'Nisbet, Robert', 'data_science', 242, 'Apress'),
(19, 'New Machiavelli, The', 'Wells, H. G.', 'fiction', 180, 'Penguin'),
(20, 'Physics & Philosophy', 'Heisenberg, Werner', 'science', 197, 'Penguin'),
(21, 'Making Software', 'Oram, Andy', 'computer_science', 232, 'O\'Reilly'),
(22, 'Analysis, Vol I', 'Tao, Terence', 'mathematics', 248, 'HBA'),
(23, 'Machine Learning for Hackers', 'Conway, Drew', 'data_science', 233, 'O\'Reilly'),
(24, 'Signal and the Noise, The', 'Silver, Nate', 'data_science', 233, 'Penguin'),
(25, 'Python for Data Analysis', 'McKinney, Wes', 'data_science', 233, 'O\'Reilly'),
(26, 'Introduction to Algorithms', 'Cormen, Thomas', 'computer_science', 234, 'MIT Press'),
(27, 'Beautiful and the Damned, The', 'Deb, Siddhartha', 'nonfiction', 198, 'Penguin'),
(28, 'Outsider, The', 'Camus, Albert', 'fiction', 198, 'Penguin'),
(29, 'Complete Sherlock Holmes, The - Vol I', 'Doyle, Arthur Conan', 'fiction', 176, 'Random House'),
(30, 'Complete Sherlock Holmes, The - Vol II', 'Doyle, Arthur Conan', 'fiction', 176, 'Random House'),
(31, 'Wealth of Nations, The', 'Smith, Adam', 'economics', 175, 'Random House'),
(32, 'Pillars of the Earth, The', 'Follett, Ken', 'fiction', 176, 'Random House'),
(33, 'Mein Kampf', 'Hitler, Adolf', 'nonfiction', 212, 'Rupa'),
(34, 'Tao of Physics, The', 'Capra, Fritjof', 'science', 179, 'Penguin'),
(35, 'Surely You\'re Joking Mr Feynman', 'Feynman, Richard', 'science', 198, 'Random House'),
(36, 'Farewell to Arms, A', 'Hemingway, Ernest', 'fiction', 179, 'Rupa'),
(37, 'Veteran, The', 'Forsyth, Frederick', 'fiction', 177, 'Transworld'),
(38, 'False Impressions', 'Archer, Jeffery', 'fiction', 177, 'Pan'),
(39, 'Last Lecture, The', 'Pausch, Randy', 'nonfiction', 197, 'Hyperion'),
(40, 'Return of the Primitive', 'Rand, Ayn', 'philosophy', 202, 'Penguin'),
(41, 'Jurassic Park', 'Crichton, Michael', 'fiction', 174, 'Random House'),
(42, 'Russian Journal, A', 'Steinbeck, John', 'nonfiction', 196, 'Penguin'),
(43, 'Tales of Mystery and Imagination', 'Poe, Edgar Allen', 'fiction', 172, 'HarperCollins'),
(44, 'Freakonomics', 'Dubner, Stephen', 'economics', 197, 'Penguin'),
(45, 'Hidden Connections, The', 'Capra, Fritjof', 'science', 197, 'HarperCollins'),
(46, 'Story of Philosophy, The', 'Durant, Will', 'philosophy', 170, 'Pocket'),
(47, 'Asami Asami', 'Deshpande, P L', 'fiction', 205, 'Mauj'),
(48, 'Journal of a Novel', 'Steinbeck, John', 'fiction', 196, 'Penguin'),
(49, 'Once There Was a War', 'Steinbeck, John', 'nonfiction', 196, 'Penguin'),
(50, 'Moon is Down your pants The', 'Steinbeck, John', 'fiction', 196, 'Penguin'),
(51, 'Brethren, The', 'Grisham, John', 'fiction', 174, 'Random House'),
(52, 'In a Free State', 'Naipaul, V. S.', 'fiction', 196, 'Rupa'),
(53, 'Catch 22', 'Heller, Joseph', 'fiction', 178, 'Random House'),
(54, 'Complete Mastermind, The', 'BBC', 'nonfiction', 178, 'BBC'),
(55, 'Dylan on Dylan', 'Dylan, Bob', 'nonfiction', 197, 'Random House'),
(56, 'Soft Computing & Intelligent Systems', 'Gupta, Madan', 'data_science', 242, 'Elsevier'),
(57, 'Textbook of Economic Theory', 'Stonier, Alfred', 'economics', 242, 'Pearson'),
(58, 'Econometric Analysis', 'Greene, W. H.', 'economics', 242, 'Pearson'),
(59, 'Learning OpenCV', 'Bradsky, Gary', 'data_science', 232, 'O\'Reilly'),
(60, 'Data Structures Using C & C++', 'Tanenbaum, Andrew', 'computer_science', 235, 'Prentice Hall'),
(61, 'Computer Vision, A Modern Approach', 'Forsyth, David', 'data_science', 255, 'Pearson'),
(62, 'Principles of Communication Systems', 'Taub, Schilling', 'computer_science', 240, 'TMH'),
(63, 'Let Us C', 'Kanetkar, Yashwant', 'computer_science', 213, 'Prentice Hall'),
(64, 'Amulet of Samarkand, The', 'Stroud, Jonathan', 'fiction', 179, 'Random House'),
(65, 'Crime and Punishment', 'Dostoevsky, Fyodor', 'fiction', 180, 'Penguin'),
(66, 'Angels & Demons', 'Brown, Dan', 'fiction', 178, 'Random House'),
(67, 'Argumentative Indian, The', 'Sen, Amartya', 'nonfiction', 209, 'Picador'),
(68, 'Sea of Poppies', 'Ghosh, Amitav', 'fiction', 197, 'Penguin'),
(69, 'Idea of Justice, The', 'Sen, Amartya', 'nonfiction', 212, 'Penguin'),
(70, 'Raisin in the Sun, A', 'Hansberry, Lorraine', 'fiction', 175, 'Penguin'),
(71, 'All the President\'s Men', 'Woodward, Bob', 'history', 177, 'Random House'),
(72, 'Prisoner of Birth, A', 'Archer, Jeffery', 'fiction', 176, 'Pan'),
(73, 'Scoop!', 'Nayar, Kuldip', 'history', 216, 'HarperCollins'),
(74, 'Ahe Manohar Tari', 'Deshpande, Sunita', 'nonfiction', 213, 'Mauj'),
(75, 'Last Mughal, The', 'Dalrymple, William', 'history', 199, 'Penguin'),
(76, 'Social Choice & Welfare, Vol 39 No. 1', 'Various', 'economics', 235, 'Springer'),
(77, 'Radiowaril Bhashane & Shrutika', 'Deshpande, P L', 'nonfiction', 213, 'Mauj'),
(78, 'Gun Gayin Awadi', 'Deshpande, P L', 'nonfiction', 212, 'Mauj'),
(79, 'Aghal Paghal', 'Deshpande, P L', 'nonfiction', 212, 'Mauj'),
(80, 'Maqta-e-Ghalib', 'Garg, Sanjay', 'fiction', 221, 'Mauj'),
(81, 'Beyond Degrees', '', 'nonfiction', 222, 'HarperCollins'),
(82, 'Manasa', 'Kale, V P', 'nonfiction', 213, 'Mauj'),
(83, 'India from Midnight to Milennium', 'Tharoor, Shashi', 'history', 198, 'Penguin'),
(84, 'World\'s Greatest Trials, The', '', 'history', 210, ''),
(85, 'Great Indian Novel, The', 'Tharoor, Shashi', 'fiction', 198, 'Penguin'),
(86, 'O Jerusalem!', 'Lapierre, Dominique', 'history', 217, 'vikas'),
(87, 'City of Joy, The', 'Lapierre, Dominique', 'fiction', 177, 'vikas'),
(88, 'Freedom at Midnight', 'Lapierre, Dominique', 'history', 167, 'vikas'),
(89, 'Winter of Our Discontent, The', 'Steinbeck, John', 'fiction', 196, 'Penguin'),
(90, 'On Education', 'Russell, Bertrand', 'philosophy', 203, 'Routledge'),
(91, 'Free Will', 'Harris, Sam', 'philosophy', 203, 'FreePress'),
(92, 'Bookless in Baghdad', 'Tharoor, Shashi', 'nonfiction', 206, 'Penguin'),
(93, 'Case of the Lame Canary, The', 'Gardner, Earle Stanley', 'fiction', 179, ''),
(94, 'Theory of Everything, The', 'Hawking, Stephen', 'science', 217, 'Jaico'),
(95, 'New Markets & Other Essays', 'Drucker, Peter', 'economics', 176, 'Penguin'),
(96, 'Electric Universe', 'Bodanis, David', 'science', 201, 'Penguin'),
(97, 'Hunchback of Notre Dame, The', 'Hugo, Victor', 'fiction', 175, 'Random House'),
(98, 'Burning Bright', 'Steinbeck, John', 'fiction', 175, 'Penguin'),
(99, 'Age of Discontuinity, The', 'Drucker, Peter', 'economics', 178, 'Random House'),
(100, 'Doctor in the Nude', 'Gordon, Richard', 'fiction', 179, 'Penguin'),
(101, 'Down and Out in Paris & London', 'Orwell, George', 'nonfiction', 179, 'Penguin'),
(103, 'Beyond the Three Seas', 'Dalrymple, William', 'history', 197, 'Random House'),
(104, 'World\'s Greatest Short Stories, The', '', 'fiction', 217, 'Jaico'),
(105, 'Talking Straight', 'Iacoca, Lee', 'nonfiction', 175, ''),
(106, 'Maugham\'s Collected Short Stories, Vol 3', 'Maugham, William S', 'fiction', 171, 'Vintage'),
(107, 'Phantom of Manhattan, The', 'Forsyth, Frederick', 'fiction', 180, ''),
(110, 'Great War for Civilization, The', 'Fisk, Robert', 'history', 197, 'HarperCollins'),
(118, 'Another book', 'Bach, Richard', 'Comedy', 172, 'Dell'),
(120, 'Web Programming step by Step', 'Marty Step', '', 0, ''),
(121, 'Web Programming step by Step', 'Step, Marty', 'Web Programming', 515, 'LULU'),
(122, 'The C++ Programming language', 'Stroustrapp, Bjourne', 'Applications programming', 713, 'wesley'),
(124, 'my calculus', 'Stewart, James', 'Mathematics', 1400, 'Stevens'),
(128, 'MY book', 'joshuak ane', 'horror', 500, 'mylist'),
(129, 'Trout&#39;s books', 'Trougtshpiel', 'sweetnesss', 700, 'woogy');

-- --------------------------------------------------------

--
-- Table structure for table `books2`
--

CREATE TABLE `books2` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `height` int(11) NOT NULL,
  `publisher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books2`
--

INSERT INTO `books2` (`id`, `title`, `author`, `genre`, `height`, `publisher`) VALUES
(1, '', 'Drucker, Peter', 'economics', 178, 'Random House'),
(2, '', 'Eraly, Abraham', 'history', 238, 'Penguin'),
(3, '', 'Deshpande, P L', 'nonfiction', 212, 'Mauj'),
(4, '', 'Deshpande, Sunita', 'nonfiction', 213, 'Mauj'),
(5, '', 'Woodward, Bob', 'history', 177, 'Random House'),
(6, '', 'Stroud, Jonathan', 'fiction', 179, 'Random House'),
(7, '', 'Tao, Terence', 'mathematics', 248, 'HBA'),
(8, '', 'Brown, Dan', 'fiction', 178, 'Random House'),
(9, '', 'Sen, Amartya', 'nonfiction', 209, 'Picador'),
(10, '', 'Aczel, Amir', 'science', 186, 'HighStakes'),
(11, '', 'Deshpande, P L', 'fiction', 205, 'Mauj'),
(12, '', 'Maugham, William S', 'fiction', 160, 'Vintage'),
(13, '', 'Deb, Siddhartha', 'nonfiction', 198, 'Penguin'),
(14, '', '', 'nonfiction', 222, 'HarperCollins'),
(15, '', 'Dalrymple, William', 'history', 197, 'Random House'),
(16, '', 'Villani, Cedric', 'mathematics', 234, 'Bodley Head'),
(17, '', 'Tharoor, Shashi', 'nonfiction', 206, 'Penguin'),
(18, '', 'Grisham, John', 'fiction', 174, 'Random House'),
(19, '', 'Steinbeck, John', 'fiction', 175, 'Penguin'),
(20, '', 'Gardner, Earle Stanley', 'fiction', 179, ''),
(21, '', 'Heller, Joseph', 'fiction', 178, 'Random House'),
(22, '', 'Lapierre, Dominique', 'fiction', 177, 'vikas'),
(23, '', 'Huntington, Samuel', 'history', 228, 'Simon&Schuster'),
(24, '', 'BBC', 'nonfiction', 178, 'BBC'),
(25, '', 'Doyle, Arthur Conan', 'fiction', 176, 'Random House'),
(26, '', 'Doyle, Arthur Conan', 'fiction', 176, 'Random House'),
(27, '', 'Forsyth, David', 'data_science', 255, 'Pearson'),
(28, '', 'Dostoevsky, Fyodor', 'fiction', 180, 'Penguin'),
(29, '', 'Nisbet, Robert', 'data_science', 242, 'Apress'),
(30, '', 'Sebastian Gutierrez', 'data_science', 230, 'Apress'),
(31, '', 'Foreman, John', 'data_science', 235, 'Wiley'),
(32, '', 'Tanenbaum, Andrew', 'computer_science', 235, 'Prentice Hall'),
(33, '', 'Gordon, Richard', 'fiction', 179, 'Penguin'),
(34, '', 'Orwell, George', 'nonfiction', 179, 'Penguin'),
(35, '', 'Mlodinow, Leonard', 'science', 197, 'Penguin'),
(36, '', 'Dylan, Bob', 'nonfiction', 197, 'Random House'),
(37, '', 'Greene, W. H.', 'economics', 242, 'Pearson'),
(38, '', 'Bodanis, David', 'science', 201, 'Penguin'),
(39, '', 'Archer, Jeffery', 'fiction', 177, 'Pan'),
(40, '', 'Hemingway, Ernest', 'fiction', 179, 'Rupa'),
(41, '', 'Dubner, Stephen', 'economics', 197, 'Penguin'),
(42, '', 'Harris, Sam', 'philosophy', 203, 'FreePress'),
(43, '', 'Lapierre, Dominique', 'history', 167, 'vikas'),
(44, '', 'Goswami, Jaideva', 'signal_processing', 228, 'Wiley'),
(45, '', 'Hawking, Stephen', 'mathematics', 197, 'Penguin'),
(46, '', 'Tharoor, Shashi', 'fiction', 198, 'Penguin'),
(47, '', 'Fisk, Robert', 'history', 197, 'HarperCollins'),
(48, '', 'Deshpande, P L', 'nonfiction', 212, 'Mauj'),
(49, '', 'Capra, Fritjof', 'science', 197, 'HarperCollins'),
(50, '', 'Russell, Bertrand', 'philosophy', 213, 'Routledge'),
(51, '', 'Konnikova, Maria', 'psychology', 240, 'Penguin'),
(52, '', 'Hugo, Victor', 'fiction', 175, 'Random House'),
(53, '', 'Sen, Amartya', 'nonfiction', 212, 'Penguin'),
(54, '', 'Sen, Amartya', 'philosophy', 219, 'Penguin'),
(55, '', 'Shih, Frank', 'signal_processing', 241, 'CRC'),
(56, '', 'Naipaul, V. S.', 'fiction', 196, 'Rupa'),
(57, '', 'Tharoor, Shashi', 'history', 198, 'Penguin'),
(58, '', 'Menon, V P', 'history', 217, 'Orient Blackswan'),
(59, '', 'Cormen, Thomas', 'computer_science', 234, 'MIT Press'),
(60, '', 'Steinbeck, John', 'fiction', 196, 'Penguin'),
(61, '', 'Crichton, Michael', 'fiction', 174, 'Random House'),
(62, '', 'Pausch, Randy', 'nonfiction', 197, 'Hyperion'),
(63, '', 'Dalrymple, William', 'history', 199, 'Penguin'),
(64, '', 'Bradsky, Gary', 'data_science', 232, 'O\'Reilly'),
(65, '', 'Kanetkar, Yashwant', 'computer_science', 213, 'Prentice Hall'),
(66, '', 'Conway, Drew', 'data_science', 233, 'O\'Reilly'),
(67, '', 'Oram, Andy', 'computer_science', 232, 'O\'Reilly'),
(68, '', 'Kale, V P', 'nonfiction', 213, 'Mauj'),
(69, '', 'Garg, Sanjay', 'fiction', 221, 'Mauj'),
(70, '', 'Maugham, William S', 'fiction', 171, 'Vintage'),
(71, '', 'Hitler, Adolf', 'nonfiction', 212, 'Rupa'),
(72, '', 'Steinbeck, John', 'fiction', 196, 'Penguin'),
(73, '', 'Vapnik, Vladimir', 'data_science', 230, 'Springer'),
(74, '', 'Wells, H. G.', 'fiction', 180, 'Penguin'),
(75, '', 'Drucker, Peter', 'economics', 176, 'Penguin'),
(76, '', 'Lapierre, Dominique', 'history', 217, 'vikas'),
(77, '', 'Russell, Bertrand', 'philosophy', 203, 'Routledge'),
(78, '', 'Steinbeck, John', 'nonfiction', 196, 'Penguin'),
(79, '', 'Bach, Richard', 'nonfiction', 172, 'Dell'),
(80, '', 'Said, Edward', 'history', 197, 'Penguin'),
(81, '', 'Camus, Albert', 'fiction', 198, 'Penguin'),
(82, '', 'Forsyth, Frederick', 'fiction', 180, ''),
(83, '', 'Heisenberg, Werner', 'science', 197, 'Penguin'),
(84, '', 'Follett, Ken', 'fiction', 176, 'Random House'),
(85, '', 'Taub, Schilling', 'computer_science', 240, 'TMH'),
(86, '', 'Archer, Jeffery', 'fiction', 176, 'Pan'),
(87, '', 'McKinney, Wes', 'data_science', 233, 'O\'Reilly'),
(88, '', 'Deshpande, P L', 'nonfiction', 213, 'Mauj'),
(89, '', 'Hansberry, Lorraine', 'fiction', 175, 'Penguin'),
(90, '', 'Sen, Amartya', 'economics', 213, 'Springer'),
(91, '', 'Rand, Ayn', 'philosophy', 202, 'Penguin'),
(92, '', 'Steinbeck, John', 'nonfiction', 196, 'Penguin'),
(93, '', 'Nayar, Kuldip', 'history', 216, 'HarperCollins'),
(94, '', 'Ghosh, Amitav', 'fiction', 197, 'Penguin'),
(95, '', '', 'fiction', 215, 'Jaico'),
(96, '', 'Silver, Nate', 'data_science', 233, 'Penguin'),
(97, '', 'Vonnegut, Kurt', 'fiction', 198, 'Random House'),
(98, '', 'Various', 'economics', 235, 'Springer'),
(99, '', 'Gupta, Madan', 'data_science', 242, 'Elsevier'),
(100, '', 'Pratt, John', 'data_science', 236, 'MIT Press'),
(101, '', 'Durant, Will', 'philosophy', 170, 'Pocket'),
(102, '', 'Sussman, Gerald', 'computer_science', 240, 'MIT Press'),
(103, '', 'Dubner, Stephen', 'economics', 179, 'HarperCollins'),
(104, '', 'Feynman, Richard', 'science', 198, 'Random House'),
(105, '', 'Poe, Edgar Allen', 'fiction', 172, 'HarperCollins'),
(106, '', 'Iacoca, Lee', 'nonfiction', 175, ''),
(107, '', 'Capra, Fritjof', 'science', 179, 'Penguin'),
(108, '', 'Stonier, Alfred', 'economics', 242, 'Pearson'),
(109, '', 'Hawking, Stephen', 'science', 217, 'Jaico'),
(110, '', 'Kafka, Frank', 'fiction', 198, 'Random House'),
(111, '', 'Capra, Fritjof', 'nonfiction', 197, 'Fontana'),
(112, '', 'Forsyth, Frederick', 'fiction', 177, 'Transworld'),
(113, '', 'Rand, Ayn', 'fiction', 178, 'Penguin'),
(114, '', 'Smith, Adam', 'economics', 175, 'Random House'),
(115, '', 'Steinbeck, John', 'fiction', 196, 'Penguin'),
(116, '', '', 'fiction', 217, 'Jaico'),
(117, '', '', 'history', 210, ''),
(118, '', 'Pirsig, Robert', 'philosophy', 172, 'Vintage');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books2`
--
ALTER TABLE `books2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `books2`
--
ALTER TABLE `books2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
