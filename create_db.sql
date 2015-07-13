CREATE DATABASE `crawl_ajk` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `comms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL COMMENT 'С��ΨһID��',
  `url` varchar(300) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL COMMENT '����',
  `address` varchar(300) DEFAULT NULL COMMENT '��ַ',
  `lat` double DEFAULT NULL COMMENT 'γ��',
  `lon` double DEFAULT NULL COMMENT '����',
  `dev` varchar(200) DEFAULT NULL COMMENT '������',
  `pm_name` varchar(200) DEFAULT NULL COMMENT '��ҵ��˾',
  `pm_type` varchar(100) DEFAULT NULL COMMENT '��ҵ����',
  `pm_fee` double DEFAULT NULL COMMENT '��ҵ����',
  `total_area` double DEFAULT NULL COMMENT '�ܽ���',
  `houses` int(11) DEFAULT NULL COMMENT '�ܻ���',
  `build_time` datetime DEFAULT NULL COMMENT '�������',
  `plot_ratio` double DEFAULT NULL COMMENT '�ݻ���',
  `o_rate` double DEFAULT NULL COMMENT '�����ʣ�0.8',
  `parking` int(11) DEFAULT NULL COMMENT 'ͣ��λ����',
  `district` varchar(200) DEFAULT NULL COMMENT '�������ƣ� ���� ���˴�СӪ',
  `g_rate` double DEFAULT NULL COMMENT '�̻���:0.367',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='	';


CREATE TABLE `comm_sells` (
  `hid` varchar(100) NOT NULL COMMENT '�۷�ID',
  `url` varchar(300) DEFAULT NULL,
  `total_price` double DEFAULT NULL COMMENT '�ۼ�',
  `price` double DEFAULT NULL,
  `d_payment` double DEFAULT NULL COMMENT '�׸���Ԫ��',
  `m_payment` double DEFAULT NULL COMMENT '�¹�',
  `cid` int(11) DEFAULT NULL COMMENT 'С��ID',
  `h_type` varchar(300) DEFAULT NULL COMMENT '����',
  `area` double DEFAULT NULL COMMENT '���',
  `dir` varchar(45) DEFAULT NULL COMMENT '����',
  `floor` varchar(45) DEFAULT NULL COMMENT '¥��',
  `decoration` varchar(45) DEFAULT NULL COMMENT 'װ��',
  `type` varchar(45) DEFAULT NULL COMMENT '�������ͣ���ͨסլ��',
  `de` longtext COMMENT '��Դ����',
  `tags` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `comm_prices` (
  `cid` int(11) NOT NULL,
  `time` datetime NOT NULL COMMENT 'ʱ��',
  `price` double DEFAULT NULL COMMENT '�۸�',
  PRIMARY KEY (`cid`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

