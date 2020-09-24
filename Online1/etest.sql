-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2015 at 08:44 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `etest`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `user1` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `auth` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user1`, `password`, `auth`) VALUES
('admin', 'admin', '0'),
('raj@gmail.com', 'uma', '1'),
('s@gmail.com', 'kushi', '1'),
('jo@gmail.com', 'josh', '1'),
('sai@gmail.com', 'sai', '1'),
('harika@gmail.com', 'harika', '1');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `SUBJECT` varchar(50) DEFAULT NULL,
  `QNO` varchar(100) DEFAULT NULL,
  `QUESTION` varchar(500) DEFAULT NULL,
  `ANS1` varchar(500) DEFAULT NULL,
  `ANS2` varchar(500) DEFAULT NULL,
  `ANS3` varchar(500) DEFAULT NULL,
  `ANS4` varchar(500) DEFAULT NULL,
  `ANS` varchar(500) DEFAULT NULL,
  `LEVELL` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`SUBJECT`, `QNO`, `QUESTION`, `ANS1`, `ANS2`, `ANS3`, `ANS4`, `ANS`, `LEVELL`) VALUES
('JAVA', '5', 'what represents string args[] in main method', 'Command line argument', 'Actual parameters', 'Formal parameters', 'None', 'Command line argument', '1'),
('JAVA', '1', 'What is Java?', 'Tech', 'Tool', 'Lang', 'S/W', 'Lang', '1'),
('JAVA', '2', 'How many access specifiers in Java?', 'One', 'Two', 'Three', 'Four', 'Four', '1'),
('JAVA', '3', 'How many bites are allocated for boolean datatype', 'Two', 'One ', 'Three ', 'Five', 'One', '1'),
('JAVA', '4', 'what is the default return type for main', 'Int', 'Void', 'Return', 'None', 'Int', '1'),
('Wipro', '3', 'The maximum KE of the photoelectron\n emitted from a surface is dependent on ', ' The intensity of incident radiation ', 'The potential of the collector electrode ', ' The frequency of incident radiation', 'The angle of incidence of radiation of\n the surface', ' The frequency of incident radiation', '1'),
('Sentence correction', '6', 'I gonna get a new cat', 'i am going to get a new cat', 'no correction', 'i am get a new cat', 'i got a new cat', 'i am going to get a new cat', '1'),
('Sentence correction', '5', ' I am happy now', 'no correction', 'i happy now', 'me happy now', 'happies', 'no correction', '1'),
('Sentence correction', '1', '  Candy taste sweet\n \n  ', 'sweeter', 'tastes', 'candies', 'No correction', 'tastes', '1'),
('Wipro', '1', ' Which of the following plots would\n be a straight line ? ', ' Logarithm of decay rate against\n logarithm of time ', ' Logarithm of decay rate against logarithm\n of number of decaying nuclei ', 'Decay rate against time ', ' Number of decaying nuclei against time ', ' Logarithm of decay rate against logarithm\n of number of decaying nuclei ', '1'),
('Wipro', '2', 'The mass number of a nucleus is', ' Always less than its atomic number ', ' Always more than its atomic number ', 'Sometimes more than and\n sometimes equal to its atomic number ', ' None of these', 'Sometimes more than and\n sometimes equal to its atomic number ', '1'),
('Sentence correction', '3', 'Me favorite coler is red', 'My and color', 'no correction', 'color', 'my', 'My and color', '1'),
('Sentence correction', '4', ' What time it is', 'is it', 'times', 'No correction', 'which', 'is it', '1'),
('Sentence correction', '2', '  she like dogs', ' likes', ' dog', 'No correction', ' her\n', ' likes', '1'),
('Wipro', '4', 'Which of the following parameters\n is the same for molecules of all\n gases at a given temperature?', ' Increase if it is pushed deeper inside the\n liquid ', 'Change if its orientation is changed ', ' Decrease if it is taken partially\n out of the liquid ', ' None of these', ' Decrease if it is taken partially out of the liquid ', '1'),
('Wipro', '5', ' If "football" is "cricket" ,"cricket" is \n"basketball" ,"basketball" is \n"volleyball","volleyball" is "khokho"\n and "khokho" is cricket, which is not\n a ball game?', 'cricket', 'football ', 'khokho', 'basketball ', 'cricket', '1'),
('Tcs', '1', ' Which Is The Smallest No Divides 2880 And Gives A Perfect Square? ', 'one ', 'two', 'five', 'six', 'five', '1'),
('Tcs', '2', 'The total expense of a boarding house are partly fixed and partly variable with the number of boarders. The charge is Rs.70 per head when there are 25 boarders and Rs.60 when there are 50 boarders. Find the charge per head when there are 100 boarders. ', 'fiftyfive', 'sixtyfive', 'seventyfive', 'eightyfive', 'fiftyfive', '1'),
('Tech mahindra', '1', 'The sum of any seven consecutive numbers is divisible by', 'two', 'seven', 'three', 'eleven', 'seven', '1'),
('Tech mahindra', '2', 'The sum of two numbers is 184.\n If one-third of the one exceeds one-seventh of the other by 8,\n find the smaller number.', 'seventytwo', 'seventyfour', 'seventysix', 'seventyeight', 'seventytwo', '1'),
('Time and Distance', '2', ' The average speed of a train in the onward journey is 25% more than that in the return journey. The train halts for one hour on reaching the destination. The total time taken for the complete to and from journey is 17 hours, covering a distance of 800 km. The speed of the train in the onward journey is: ', 'fourtyfive', 'fourtyseven', 'fiftytwo', 'fiftysix', 'fiftysix', '1'),
('Time and Distance', '1', ' Excluding stoppages, the speed of a bus is 54 kmph and including stoppages, it is 45 kmph. For how many minutes does the bus stop per hour?', 'nine', 'ten', 'twelve', 'twenty', 'ten', '1');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `qual` varchar(100) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `exp` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `auth` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`firstname`, `lastname`, `email`, `phone`, `gender`, `qual`, `skills`, `exp`, `address`, `auth`) VALUES
('Ramesh', 'password', 'rameshv.coign@gmail.com', '9491348934', 'Male', 'MCA', 'JAVA', '2', 'HYD', 'NTG'),
('rajesh', 'uma', 'raj@gmail.com', '9817281910', 'Male', 'm tech', 'c java', '1', 'khanapur', '1'),
('shiva', 'kushi', 's@gmail.com', '881314235', 'Female', 'bcnbcjh', 'bcn d', 'ncb njbc', 'cgwhcjb', '1'),
('jo', 'josh', 'jo@gmail.com', '32321571', 'Female', 'ede', 'efded', 'efrf', 'refr', '1'),
('sai', 'sai', 'sai@gmail.com', '984819399', 'Female', 'hbcn cg', 'bvhjc ', 'HBJCN', 'hbhjcd', '1'),
('harika', 'harika', 'harika@gmail.com', '827198289', 'Female', 'b tech', 'c java c++', '0', 'nzb', '1');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `EMAILID` varchar(40) DEFAULT NULL,
  `QNO` int(11) DEFAULT NULL,
  `SUBJECT` varchar(30) DEFAULT NULL,
  `QUESTION` varchar(500) DEFAULT NULL,
  `ANSWER` varchar(100) DEFAULT NULL,
  `CORRECTANSWER` varchar(100) DEFAULT NULL,
  `MARKS` int(11) DEFAULT NULL,
  `LEVELL` int(11) DEFAULT NULL,
  `TIME` varchar(100) DEFAULT NULL,
  `NOP` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`EMAILID`, `QNO`, `SUBJECT`, `QUESTION`, `ANSWER`, `CORRECTANSWER`, `MARKS`, `LEVELL`, `TIME`, `NOP`, `attempt`) VALUES
('harika@gmail.com', 1, 'Time and Distance', ' Nithin was counting down from 32.\n Sumit was counting upwards the\n numbers starting from1 and he \nwas calling out only the odd numbers\n. What common number will they\n call out at the same time if they \nwere calling at the same speed? ', 'two', 'They will not call out the same number', 0, 1, '9', 1, 1),
('harika@gmail.com', 1, 'Tcs', ' Nithin was counting down from 32.\n Sumit was counting upwards the\n numbers starting from1 and he \nwas calling out only the odd numbers\n. What common number will they\n call out at the same time if they \nwere calling at the same speed? ', 'two', 'They will not call out the same number', 0, 1, '4', 1, 1),
('raj@gmail.com', 1, 'Time and Distance', ' Excluding stoppages, the speed of a bus is 54 kmph and including stoppages, it is 45 kmph. For how many minutes does the bus stop per hour?', 'null', 'ten', 0, 1, '0', 0, 1),
('s@gmail.com', 1, 'JAVA', 'How', 'Four', 'Five', 0, 1, '9', 1, 1),
('s@gmail.com', 2, 'JAVA', 'hai', 'c', 'c', 1, 1, '3', 1, 1),
('s@gmail.com', 1, 'JAVA', 'How', 'Four', 'Five', 0, 1, '5', 1, 2),
('s@gmail.com', 2, 'JAVA', 'hai', 'd', 'c', 0, 1, '3', 1, 2),
('jo@gmail.com', 1, 'Wipro', ' Which of the following plots would\n be a straight line ? ', 'Decay rate against time ', ' Logarithm of decay rate against logarithm\n of number of decaying nuclei ', 0, 1, '7', 1, 1),
('jo@gmail.com', 2, 'Wipro', 'The mass number of a nucleus is', 'Sometimes more than and\n sometimes equal to its atomic number ', 'Sometimes more than and\n sometimes equal to its atomic number ', 1, 1, '6', 1, 1),
('jo@gmail.com', 3, 'Wipro', 'The maximum KE of the photoelectron\n emitted from a surface is dependent on ', 'The angle of incidence of radiation of\n the surface', ' The frequency of incident radiation', 0, 1, '2', 1, 1),
('jo@gmail.com', 4, 'Wipro', 'Which of the following parameters\n is the same for molecules of all\n gases at a given temperature?', ' Decrease if it is taken partially\n out of the liquid ', ' Decrease if it is taken partially out of the liquid ', 0, 1, '21', 1, 1),
('jo@gmail.com', 5, 'Wipro', ' If "football" is "cricket" ,"cricket" is \n"basketball" ,"basketball" is \n"volleyball","volleyball" is "khokho"\n and "khokho" is cricket, which is not\n a ball game?', 'basketball ', 'cricket', 0, 1, '5', 1, 1),
('jo@gmail.com', 1, 'JAVA', 'How', 'null', 'Five', 0, 1, '0', 0, 2),
('jo@gmail.com', 1, 'JAVA', 'How', 'null', 'Five', 0, 1, '0', 0, 3),
('sai@gmail.com', 1, 'JAVA', 'How', 'null', 'Five', 0, 1, '0', 0, 1),
('jo@gmail.com', 1, 'JAVA', 'How', 'Four', 'Five', 0, 1, '0', 0, 4),
('jo@gmail.com', 2, 'JAVA', 'hai', 'd', 'c', 0, 1, '9', 1, 4),
('sai@gmail.com', 1, 'Tcs', ' Nithin was counting down from 32.\n Sumit was counting upwards the\n numbers starting from1 and he \nwas calling out only the odd numbers\n. What common number will they\n call out at the same time if they \nwere calling at the same speed? ', 'nine', 'They will not call out the same number', 0, 1, '0', 0, 1),
('jo@gmail.com', 1, 'Tcs', ' Nithin was counting down from 32.\n Sumit was counting upwards the\n numbers starting from1 and he \nwas calling out only the odd numbers\n. What common number will they\n call out at the same time if they \nwere calling at the same speed? ', 'two', 'They will not call out the same number', 0, 1, '3', 1, 1),
('jo@gmail.com', 1, 'JAVA', 'How', 'Four', 'Five', 0, 1, '7', 1, 5),
('jo@gmail.com', 2, 'JAVA', 'hai', 'd', 'c', 0, 1, '5', 1, 5),
('harika@gmail.com', 2, 'Time and Distance', 'Radha moves towards South-east\n a distance of 7 km,\n then she moves towards West and\n travels a distance of 14m. From here, \nshe moves towards North-west\n a distance of  7 m and finally she\n moves a distance of  4 m towards\n East and stod at that point. \nHow far is the starting point from\n where she stood? ', 'seven meters', 'eleven meters', 0, 1, '3', 1, 1),
('harika@gmail.com', 3, 'Time and Distance', ' A, P, R, X, S and Z are sitting in a row.\n S and z are in the centre.\n A and P are at the ends. \nR is sitting to the left of A. \nWho is to the right of P? ', 'x', 'x', 1, 1, '2', 1, 1),
('harika@gmail.com', 4, 'Time and Distance', ' Introducing a boy, a girl said, \n"He is the son of the daughter of \nthe father of my uncle." How is the\n boy related to the girl?', ' Uncle ', 'Brother', 0, 1, '2', 1, 1),
('harika@gmail.com', 1, 'Wipro', ' Which of the following plots would\n be a straight line ? ', 'Decay rate against time ', ' Logarithm of decay rate against logarithm\n of number of decaying nuclei ', 0, 1, '3', 1, 1),
('harika@gmail.com', 2, 'Wipro', 'The mass number of a nucleus is', 'Sometimes more than and\n sometimes equal to its atomic number ', 'Sometimes more than and\n sometimes equal to its atomic number ', 1, 1, '2', 1, 1),
('harika@gmail.com', 3, 'Wipro', 'The maximum KE of the photoelectron\n emitted from a surface is dependent on ', ' The frequency of incident radiation', ' The frequency of incident radiation', 1, 1, '2', 1, 1),
('harika@gmail.com', 4, 'Wipro', 'Which of the following parameters\n is the same for molecules of all\n gases at a given temperature?', ' Decrease if it is taken partially\n out of the liquid ', ' Decrease if it is taken partially out of the liquid ', 0, 1, '2', 1, 1),
('harika@gmail.com', 5, 'Wipro', ' If "football" is "cricket" ,"cricket" is \n"basketball" ,"basketball" is \n"volleyball","volleyball" is "khokho"\n and "khokho" is cricket, which is not\n a ball game?', 'khokho', 'cricket', 0, 1, '2', 1, 1),
('raj@gmail.com', 2, 'Time and Distance', ' The average speed of a train in the onward journey is 25% more than that in the return journey. The train halts for one hour on reaching the destination. The total time taken for the complete to and from journey is 17 hours, covering a distance of 800 km. The speed of the train in the onward journey is: ', 'fiftytwo', 'fiftysix', 0, 1, '9', 1, 1),
('raj@gmail.com', 1, 'Sentence correction', '  Candy taste sweet\n \n  ', 'tastes', 'tastes', 1, 1, '5', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Sname` varchar(30) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `attempt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Sname`, `subject`, `attempt`) VALUES
('anilkakarla.coign@gmail.com', 'JAVA', 1),
('anilkakarla.coign@gmail.com', 'Time and Distance', 1),
('anilkakarla.coign@gmail.com', 'Time and Distance', 2),
('vijay@gmail.com', 'JAVA', 2),
('anilkakarla.coign@gmail.com', 'JAVA', 2),
('anilkakarla.coign@gmail.com', 'JAVA', 3),
('anilkakarla.coign@gmail.com', 'JAVA', 4),
('anilkakarla.coign@gmail.com', 'JAVA', 5),
('anilkakarla.coign@gmail.com', 'JAVA', 6),
('anilkakarla.coign@gmail.com', 'JAVA', 7),
('anilkakarla.coign@gmail.com', 'JAVA', 8),
('anilkakarla.coign@gmail.com', 'JAVA', 9),
('anilkakarla.coign@gmail.com', 'JAVA', 10),
('anilkakarla.coign@gmail.com', 'JAVA', 11),
('anilkakarla.coign@gmail.com', 'JAVA', 12),
('anilkakarla.coign@gmail.com', 'JAVA', 13),
('anilkakarla.coign@gmail.com', 'JAVA', 14),
('anilkakarla.coign@gmail.com', 'JAVA', 15),
('anilkakarla.coign@gmail.com', 'JAVA', 16),
('anilkakarla.coign@gmail.com', 'JAVA', 17),
('anilkakarla.coign@gmail.com', 'JAVA', 18),
('anilkakarla.coign@gmail.com', 'JAVA', 19),
('anilkakarla.coign@gmail.com', 'JAVA', 20),
('null', 'JAVA', 1),
('null', 'JAVA', 2),
('null', 'JAVA', 3),
('null', 'JAVA', 4),
('null', 'JAVA', 5),
('null', 'JAVA', 6),
('null', 'JAVA', 7),
('anil@anil.com', 'JAVA', 1),
('anil@anil.com', 'JAVA', 2),
('s@gmail.com', 'JAVA', 1),
('s@gmail.com', 'JAVA', 2),
('jo@gmail.com', 'Wipro', 1),
('anil@anil.com', 'Time and Distance', 1),
('anil@anil.com', 'JAVA', 3),
('jo@gmail.com', 'JAVA', 1),
('jo@gmail.com', 'JAVA', 2),
('jo@gmail.com', 'JAVA', 3),
('sai@gmail.com', 'JAVA', 1),
('jo@gmail.com', 'JAVA', 4),
('sai@gmail.com', 'Tcs', 1),
('jo@gmail.com', 'Tcs', 1),
('jo@gmail.com', 'JAVA', 5),
('harika@gmail.com', 'Tcs', 1),
('harika@gmail.com', 'Time and Distance', 1),
('harika@gmail.com', 'Wipro', 1),
('raj@gmail.com', 'Time and Distance', 1),
('raj@gmail.com', 'Sentence correction', 1);
