CREATE TABLE `chats` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `msg` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `const` (
  `var` varchar(14) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`var`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `contest_problem` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `contest_special` (
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `contest_user` (
  `cid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`cid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `contests` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pub` int(11) NOT NULL,
  `ts1` bigint(20) DEFAULT NULL,
  `ts2` bigint(20) DEFAULT NULL,
  `ttl` text NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

CREATE TABLE `exam_scores` (
  `uid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `exams` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ttl` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `level_domain` (
  `did` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`did`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `levels` (
  `level` int(11) NOT NULL AUTO_INCREMENT,
  `ttl` text COLLATE utf8_unicode_ci,
  `lorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `problem_dependency` (
  `pid` int(11) DEFAULT NULL,
  `depend_pid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `problems` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pub` int(11) NOT NULL,
  `ts` bigint(20) DEFAULT NULL,
  `src` text COLLATE utf8_unicode_ci NOT NULL,
  `ttl` text COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `porder` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `submissions` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `ts` bigint(20) DEFAULT NULL,
  `lng` int(11) NOT NULL,
  `len` int(11) NOT NULL,
  `scr` int(11) NOT NULL,
  `res` int(11) NOT NULL,
  `cpu` int(11) NOT NULL,
  `mem` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `ts1` bigint(20) DEFAULT NULL,
  `ts2` bigint(20) DEFAULT NULL,
  `lgn` char(255) NOT NULL,
  `pwd` mediumtext NOT NULL,
  `motto` mediumtext DEFAULT NULL,
  `email` mediumtext NOT NULL,
  `nname` mediumtext DEFAULT NULL,
  `ename` mediumtext DEFAULT NULL,
  `class` char(255) DEFAULT NULL,
  `ip` char(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `lgn` (`lgn`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
