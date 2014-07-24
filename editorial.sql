CREATE DATABASE editorial;

USE editorial;

CREATE TABLE IF NOT EXISTS `tb_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

INSERT INTO `tb_book` (`id`, `title`) VALUES
(1, 'Libro1');

CREATE TABLE IF NOT EXISTS `tb_table_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(250) NOT NULL,
  `level` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

INSERT INTO `tb_table_contents` (`id`, `content`, `level`, `order`, `id_book`) VALUES
(1, 'Introduccion', 1, 1, 1),
(2, 'Motivacion', 2, 2, 1),
(3, 'Reseña Historica', 2, 3, 1),
(4, 'Origen', 3, 4, 1),
(5, 'Trabajos', 3, 5, 1),
(6, 'Soluciones Actuales', 2, 6, 1),
(7, 'Objetivos', 2, 7, 1),
(8, 'Requisitos', 1, 8, 1),
(9, 'Hardware', 2, 9, 1),
(10, 'Software', 2, 10, 1);
