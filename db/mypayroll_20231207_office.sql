/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : mypayroll

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 07/12/2023 16:45:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_super
-- ----------------------------
DROP TABLE IF EXISTS `admin_super`;
CREATE TABLE `admin_super`  (
  `id_admin` bigint NOT NULL AUTO_INCREMENT,
  `nama` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` int NOT NULL DEFAULT 2,
  `foto` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `hp` varchar(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kelamin` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `id_menu` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_akses` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_adm` tinyint(1) NULL DEFAULT 1,
  `skin` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'skin-blue',
  `status` tinyint(1) NULL DEFAULT 1,
  `create_date` datetime NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `create_by` bigint NULL DEFAULT NULL,
  `update_by` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id_admin`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `idx`(`email`, `id_menu`, `id_akses`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin_super
-- ----------------------------
INSERT INTO `admin_super` VALUES (1, 'SuperAdmin', 'Semarang Indonesia', 'galeh.fatma1@gmail.com', 'superuser', '4b37b35e82470e0faee1bc5b1333fe3170f01b6847bd0a4f1790a96b93336f94b4ff1d7843950a456f9a182f56fa2075021ad404e98948e422d04fd66152dc07', 1, 'asset/img/admin-photo/userm.png', '085852924304', 'l', '2023-03-18 08:31:22', '0', '1', 0, 'skin-blue', 1, '2018-04-23 00:00:00', '2023-03-18 08:36:58', 2, 1);
INSERT INTO `admin_super` VALUES (2, 'ADMIN', 'Semarang', 'admin@admin.com', 'admin', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, 'asset/img/admin-photo/userm.png', '085725951044', 'l', '2023-10-24 20:29:48', '0', '1', 1, 'skin-blue', 1, '2018-10-16 00:00:00', '2023-08-09 14:37:56', 1, 2);
INSERT INTO `admin_super` VALUES (3, 'ACCOUNTING', 'Semarang', 'admin@admin.com', 'accounting', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 'asset/img/admin-photo/userm.png', '085852924304', 'l', '2023-08-18 08:22:09', '0', '83', 1, 'skin-blue', 0, '2018-10-16 00:00:00', '2022-05-13 14:44:16', 1, 3);
INSERT INTO `admin_super` VALUES (4, 'Administrator', 'Semarang, Indonesia', 'admin@admin.com', 'adm', 'd973de409e22eff2424c65d9b2058dd2aa0ddbaea6a504ba48dff92551a4cf162e908acf5add06282ae5027017e979405e6c9be7ce5ea223293e7acfbe24b78d', 2, 'asset/img/admin-photo/userm.png', '085852924304', 'l', '2022-09-09 14:02:58', '0', '1', 1, 'skin-blue', 1, '2018-10-16 00:00:00', '2022-03-31 09:40:58', 2, 4);
INSERT INTO `admin_super` VALUES (5, 'HRD PUSAT', 'karangjati', 'hrd@jkb.co.id', 'HRD', 'eaac12397a4d91b57f01d853cd427e99efa1564043c252312194a89263787603ad82d181c581442c349d1f01a2f7da346d3ab2bc3fbf286560b4bb454b424140', 2, 'asset/img/admin-photo/userm.png', '085700968102', 'l', '2023-08-23 11:34:33', NULL, '84', 1, 'dark-mode', 1, '2022-03-31 09:40:58', '2023-07-27 11:03:51', 2, 5);
INSERT INTO `admin_super` VALUES (6, 'Admin Perjalanan Dinas', 'JKB', 'perdin@jkb.co.id', 'perdin', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 'asset/img/admin-photo/userm.png', '0987543334', 'p', '2022-07-22 14:37:32', NULL, '85', 1, 'skin-blue', 1, '2022-06-06 14:57:09', '2022-07-22 14:32:42', 1, 2);
INSERT INTO `admin_super` VALUES (7, 'Perdin Semarang', '-', 'perdin@jkb.co.id', 'perdin_smg', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 'asset/img/admin-photo/userm.png', '089', 'p', '2022-07-22 15:37:35', NULL, '94', 1, 'skin-blue', 1, '2022-07-22 15:33:14', '2022-07-22 15:37:01', 1, 2);
INSERT INTO `admin_super` VALUES (8, 'ANGGORO', 'Semarang', 'anggoromukti@gmail.com', 'anggoro', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 'asset/img/admin-photo/userm.png', '089667022480', 'l', '2023-07-27 11:47:13', NULL, '103', 1, 'skin-blue', 1, '2023-02-27 07:59:07', '2023-02-27 08:09:15', 1, 2);

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `id_admin` bigint NOT NULL AUTO_INCREMENT,
  `nama` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` int NOT NULL DEFAULT 2,
  `foto` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `hp` varchar(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kelamin` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `id_jabatan` int NOT NULL DEFAULT 0,
  `email_token` varchar(4000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_verified` int NULL DEFAULT 0,
  `reset_token` varchar(4000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_karyawan` bigint NULL DEFAULT NULL,
  `id_group` int NULL DEFAULT NULL,
  `status_adm` tinyint(1) NULL DEFAULT 1,
  `skin` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'skin-blue',
  `status` tinyint(1) NULL DEFAULT 1,
  `create_date` datetime NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `create_by` bigint NULL DEFAULT NULL,
  `update_by` bigint NULL DEFAULT NULL,
  `admin` enum('superadmin','karyawan') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'karyawan',
  PRIMARY KEY (`id_admin`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `idx`(`email`, `id_karyawan`, `id_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (1, 'SuperAdmin', 'Semarang Indonesia', 'galeh.fatma1@gmail.com', 'superuser', '4b37b35e82470e0faee1bc5b1333fe3170f01b6847bd0a4f1790a96b93336f94b4ff1d7843950a456f9a182f56fa2075021ad404e98948e422d04fd66152dc07', 0, 'asset/img/admin-photo/userm.png', '085852924304', 'l', '2023-03-18 08:31:22', 0, '', 0, 'VnL5lzc878G7osVMJeNeHSwyghJCpDlNqva2i8iOlKnOcjYkGb5b34a053098d5', 0, 1, 0, 'skin-blue', 1, '2018-04-23 00:00:00', '2023-03-18 08:36:58', 2, 1, 'superadmin');
INSERT INTO `admin_user` VALUES (2, 'ADMIN', 'Semarang', 'admin@admin.com', 'admin', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 'asset/img/admin-photo/userm.png', '085725951044', 'l', '2023-10-24 20:29:48', 0, '', 0, '', 0, 1, 1, 'skin-blue', 1, '2018-10-16 00:00:00', '2023-08-09 14:37:56', 1, 2, 'superadmin');
INSERT INTO `admin_user` VALUES (3, 'ACCOUNTING', 'Semarang', 'admin@admin.com', 'accounting', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 'asset/img/admin-photo/userm.png', '085852924304', 'l', '2023-08-18 08:22:09', 0, '', 0, '', 0, 83, 1, 'skin-blue', 0, '2018-10-16 00:00:00', '2022-05-13 14:44:16', 1, 3, 'karyawan');
INSERT INTO `admin_user` VALUES (4, 'Administrator', 'Semarang, Indonesia', 'admin@admin.com', 'adm', 'd973de409e22eff2424c65d9b2058dd2aa0ddbaea6a504ba48dff92551a4cf162e908acf5add06282ae5027017e979405e6c9be7ce5ea223293e7acfbe24b78d', 0, 'asset/img/admin-photo/userm.png', '085852924304', 'l', '2022-09-09 14:02:58', 0, NULL, 0, NULL, 0, 1, 1, 'skin-blue', 1, '2018-10-16 00:00:00', '2022-03-31 09:40:58', 2, 4, 'karyawan');
INSERT INTO `admin_user` VALUES (5, 'HRD PUSAT', 'karangjati', 'hrd@jkb.co.id', 'HRD', 'eaac12397a4d91b57f01d853cd427e99efa1564043c252312194a89263787603ad82d181c581442c349d1f01a2f7da346d3ab2bc3fbf286560b4bb454b424140', 1, 'asset/img/admin-photo/userm.png', '085700968102', 'l', '2023-08-23 11:34:33', 0, NULL, 0, NULL, NULL, 84, 1, 'dark-mode', 1, '2022-03-31 09:40:58', '2023-07-27 11:03:51', 2, 5, 'karyawan');
INSERT INTO `admin_user` VALUES (6, 'Admin Perjalanan Dinas', 'JKB', 'perdin@jkb.co.id', 'perdin', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 'asset/img/admin-photo/userm.png', '0987543334', 'p', '2022-07-22 14:37:32', 0, NULL, 0, NULL, NULL, 85, 1, 'skin-blue', 1, '2022-06-06 14:57:09', '2022-07-22 14:32:42', 1, 2, 'karyawan');
INSERT INTO `admin_user` VALUES (7, 'Perdin Semarang', '-', 'perdin@jkb.co.id', 'perdin_smg', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 2, 'asset/img/admin-photo/userm.png', '089', 'p', '2022-07-22 15:37:35', 0, NULL, 0, NULL, NULL, 94, 1, 'skin-blue', 1, '2022-07-22 15:33:14', '2022-07-22 15:37:01', 1, 2, 'karyawan');
INSERT INTO `admin_user` VALUES (8, 'ANGGORO', 'Semarang', 'anggoromukti@gmail.com', 'anggoro', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 1, 'asset/img/admin-photo/userm.png', '089667022480', 'l', '2023-07-27 11:47:13', 0, NULL, 0, NULL, NULL, 103, 1, 'skin-blue', 1, '2023-02-27 07:59:07', '2023-02-27 08:09:15', 1, 2, 'karyawan');

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan`  (
  `id_karyawan` bigint NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `no_hp` varchar(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_pajak` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `agama` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kelamin` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_sub` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `loker` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `grade` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_disiplin` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `npwp` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'asset/img/user-photo/user.png',
  `foto_ttd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gol_darah` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rekening` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bank` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bpjskes` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bpjstk` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_ktp` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `berat_badan` int NULL DEFAULT NULL,
  `tinggi_badan` int NULL DEFAULT NULL,
  `pendidikan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `universitas` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jurusan` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_karyawan` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_perjanjian` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_masuk` date NULL DEFAULT NULL,
  `alamat_asal_jalan` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_asal_desa` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_asal_kecamatan` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_asal_kabupaten` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_asal_provinsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_asal_pos` int NULL DEFAULT NULL,
  `alamat_sekarang_jalan` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_sekarang_desa` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_sekarang_kecamatan` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_sekarang_kabupaten` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_sekarang_provinsi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_sekarang_pos` int NULL DEFAULT NULL,
  `nama_ayah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_lahir_ayah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir_ayah` date NULL DEFAULT NULL,
  `pendidikan_terakhir_ayah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp_ayah` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_ayah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desa_ayah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kecamatan_ayah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kabupaten_ayah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `provinsi_ayah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_pos_ayah` int NULL DEFAULT NULL,
  `nama_ibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_lahir_ibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir_ibu` date NULL DEFAULT NULL,
  `no_hp_ibu` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pendidikan_terakhir_ibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_ibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desa_ibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kecamatan_ibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kabupaten_ibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `provinsi_ibu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_pos_ibu` int NULL DEFAULT NULL,
  `nama_pasangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_lahir_pasangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir_pasangan` date NULL DEFAULT NULL,
  `no_hp_pasangan` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pendidikan_terakhir_pasangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_pasangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `desa_pasangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kecamatan_pasangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kabupaten_pasangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `provinsi_pasangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_pos_pasangan` int NULL DEFAULT NULL,
  `status_nikah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jumlah_anak` int NULL DEFAULT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `email_token` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT 0,
  `reset_token` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan_pa` bigint NULL DEFAULT NULL,
  `loker_pa` bigint NULL DEFAULT NULL,
  `id_finger` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `status_emp` tinyint(1) NOT NULL DEFAULT 1,
  `status_suspen` tinyint(1) NULL DEFAULT 0,
  `create_date` datetime NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `create_by` bigint NULL DEFAULT NULL,
  `update_by` bigint NULL DEFAULT NULL,
  `sc_old` int NULL DEFAULT NULL,
  `sisa_cuti` int NULL DEFAULT NULL,
  `gaji` decimal(65, 2) NULL DEFAULT NULL,
  `gaji_pokok` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gaji_bpjs` decimal(65, 2) NOT NULL,
  `gaji_bpjs_tk` decimal(65, 2) NOT NULL,
  `sepatu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `baju` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode_pph` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_penggajian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan_sekunder` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_group_user` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `skin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `poin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `poin_old` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `poin_now` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `grade_old` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wfh` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `hari_kerja_wfh` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `hari_kerja_non_wfh` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `golongan` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_karyawan`) USING BTREE,
  INDEX `nik`(`nik`) USING BTREE,
  INDEX `idx`(`id_karyawan`, `loker`, `grade`, `id_group_user`, `id_finger`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 647 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES (1, '1306670283', 'SRIYANTO', 'KAB. SEMARANG', '1967-06-13', '', 'K/2', 'islam', 'l', 'JBT201901160029', 'NULL', 'LOK201907300005', 'GRD202204080001', 'NULL', '47.571.522.3-505.000', '', 'asset/img/user-photo/user.png', 'NULL', NULL, '2220241265', 'BANK201901250001', '0001905704796', '88L00017196', '3322141306670003', 0, 0, 'S2', 'NULL', 'NULL', 'STK201901090001', '', '1983-02-02', 'LING KALIALANG RT 001 RW 001 ', 'LANGENSARI', 'UNGARAN BARAT', 'SEMARANG', 'JAWA TENGAH', 50552, 'LING KALIALANG RT 001 RW 001 ', 'LANGENSARI', 'UNGARAN BARAT', 'SEMARANG', 'JAWA TENGAH', 50552, 'DAMIDIN ', 'NULL', '1900-01-01', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'SUTIRAH', 'NULL', '1900-01-01', 'NULL', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'C TRI WIDYASTUTI', 'KAB SEMARANG', '1969-01-31', 'NULL', 'SLTA', 'LING KALIALANG RT 001 RW 001', 'LANGENSARI', 'UNGARAN BARAT', 'SEMARANG ', 'JAWA TENGAH', 50552, 'NIKAH', 0, '2023-07-27 10:34:01', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '', 1, 1, 0, '2020-02-02 02:02:00', '2023-08-22 13:48:48', 0, 40, 10, 4, 3000000.00, 'matrix', 2853300.00, 2853300.00, '', '', '', 'BULANAN', NULL, '', '', '', '', '', '', '', '', '', '1');
INSERT INTO `karyawan` VALUES (2, '0310620283', 'MUDRIYANTO', '', '1962-10-03', '', 'NULL', 'islam', 'l', 'JBT201901160016', 'NULL', 'LOK201907300005', 'GRD201908140962', 'NULL', '-', '', 'asset/img/user-photo/user.png', 'NULL', 'NUL', '2220683705', '', '-', '84L00000142', '3322130310620001', 0, 0, 'SD', 'NULL', 'NULL', 'STK201901090001', '031/PKWT/IX/2020', '1983-02-16', 'Krajan RT004 RW002 Wringin Putih Bergas Kab Semarang', '', '', '', '', 0, 'Krajan RT004 RW002 Wringin Putih Bergas Kab Semarang', '', '', '', '', 0, 'NULL', 'NULL', '1900-01-01', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', '1900-01-01', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'Rohmiyatun', 'NULL', '1967-08-17', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 0, '2019-11-05 12:00:00', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '408', 1, 0, 0, '2020-02-02 02:02:00', '2020-01-07 14:06:59', 0, 2, 0, 12, 2226000.00, 'non_matrix', 2055000.00, 0.00, '', '', '', 'BULANAN', 'NULL', '', '', '', '', '', '', '', '', '', '2');
INSERT INTO `karyawan` VALUES (3, '1503890411', 'EKO NURYANTO', 'NULL', '1989-03-15', 'NULL', 'NULL', 'islam', 'l', 'JBT201901160077', 'NULL', 'LOK201907300005', 'GRD201908140962', 'NULL', '-', 'NULL', 'asset/img/user-photo/user.png', 'NULL', 'ab', '2220683209', 'NULL', '0001528906375', '12005708958', '3319091503890001', 0, 0, 'SLTA', 'NULL', 'NULL', 'STK201901090001', '051/PKWT/IX/2020', '2011-04-18', 'Dusun Krajan RT 005 RW 002 Wringinputih Bergas', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'Dusun Krajan RT 005 RW 002 Wringinputih Bergas', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', '1900-01-01', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', '1900-01-01', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'Peni Indriyani', 'NULL', '1993-12-29', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 0, '2019-11-05 12:00:00', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '404', 1, 0, 0, '2020-02-02 02:02:00', '2020-01-07 14:06:59', 0, 2, 0, 12, 2178000.00, 'non_matrix', 2055000.00, 0.00, '', '', '', 'BULANAN', 'NULL', '', '', '', '', '', '', '', '', '', '2');
INSERT INTO `karyawan` VALUES (4, '0309700610', 'PARJANI', 'KAB SEMARANG', '1970-09-03', 'NULL', 'K/2', 'islam', 'l', 'JBT201901160016', 'NULL', 'LOK201907300005', 'GRD201908140988', 'NULL', '-', 'NULL', 'asset/img/user-photo/user.png', 'NULL', 'a', '2220682768', 'BANK201901250001', '0001690964987', '12005709043', '3322130309700005', 0, 0, 'SD', 'NULL', 'NULL', 'STK201901090001', '', '2010-06-21', 'WRINGIN PUTIH RT008 RW002 ', 'WRINGIN PUTIH', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'WRINGIN PUTIH RT008 RW002 ', 'WRINGIN PUTIH', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'NGADERI', 'NULL', '1900-01-01', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NGATINI', 'NULL', '1900-01-01', 'NULL', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'SITI MAHMUDAH', 'KAB SEMARANG', '1975-09-16', 'NULL', '', 'WRINGIN PUTIH RT 008 RW 002', 'WRINGIN PUTIH', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'NIKAH', 0, '2023-08-09 07:06:14', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '427', 0, 1, 0, '2020-02-02 02:02:00', '2023-08-22 13:48:48', 0, 40, 6, 4, 2714138.00, 'non_matrix', 2544404.09, 2544404.00, '', '', '', 'BULANAN', NULL, '', '', '', '', '', '', '', '', '', '2');
INSERT INTO `karyawan` VALUES (5, '1308940514', 'MUHAMMAD IKHSAN', 'KENDAL', '1994-08-13', '082233076867', 'K/1', 'islam', 'l', 'JBT202102090002', 'NULL', 'LOK201907300005', 'GRD201908140969', 'NULL', '-', 'NULL', 'asset/img/user-photo/user.png', 'NULL', NULL, '2220682725', 'BANK201901250001', '0001531409714', '14038215555', '3322131308940005', 0, 0, 'SMK', 'NULL', 'NULL', 'STK201901090001', '', '2014-05-20', 'GEBUGAN RT003 RW001', 'GEBUGAN', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'GEBUGAN RT003 RW001', 'GEBUGAN', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'PRIMULYONO', 'NULL', '1900-01-01', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'MARYATI', 'NULL', '1900-01-01', 'NULL', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'FARAH AMILIA', 'SALATIGA', '1995-05-11', 'NULL', '', 'GEBUGAN RT 003 RW 001', 'GEBUGAN', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'NIKAH', 0, '2023-08-10 10:10:52', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '472', 0, 1, 0, '2020-02-02 02:02:00', '2023-08-22 13:48:48', 0, 40, 7, 2, 2914138.00, 'non_matrix', 2744404.09, 2744404.00, '', '', '', 'BULANAN', 'JBT202102090002', '', '', '', '', '', '', '', '', '', '2');
INSERT INTO `karyawan` VALUES (6, '1607931114', 'AGUNG SETYAWAN', 'KAB SEMARANG', '1993-07-16', 'NULL', 'TK/0', 'islam', 'l', 'JBT202102090002', 'NULL', 'LOK201907300005', 'GRD201908140970', 'NULL', '36.523.765.0-505000', 'NULL', 'asset/img/user-photo/user.png', 'NULL', NULL, '2220686950', 'BANK201901250001', '-', '11023348698', '3322131607930002', 0, 0, 'SMK', 'NULL', 'NULL', 'STK201901090001', '007/PKWT/III/2021', '2014-11-03', 'KRAJAN RT001 RW002 ', 'WRINGIN PUTIH', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'KRAJAN RT001 RW002 ', 'WRINGIN PUTIH', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'SUPARNO', 'NULL', '1900-01-01', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'JUMIRAH', 'NULL', '1900-01-01', 'NULL', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'AYUNA IMASITA', 'KAB SEMARANG', '1994-08-02', 'NULL', NULL, 'KRAJAN RT 001 RW 002', 'WRINGIN PUTIH', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'NIKAH', 0, '2019-11-05 12:00:00', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '504', 1, 0, 0, '2020-02-02 02:02:00', '2021-03-26 14:03:55', 0, 2, 0, 12, 2420520.00, 'non_matrix', 2302797.00, 2420522.00, '', '', '', 'BULANAN', 'JBT202102090002', '', '', '', '', '', '', '', '', '', '2');
INSERT INTO `karyawan` VALUES (7, '0101600180', 'HARNO', 'NULL', '1960-01-01', 'NULL', 'NULL', 'islam', 'l', 'JBT201903280001', 'NULL', 'LOK201809260007', 'NULL', 'NULL', '88.777.467.7-505.000', 'NULL', 'asset/img/user-photo/user.png', 'NULL', '-', '2220682695', 'NULL', '0001692205492', '87L00008619', '3322130101800010', 0, 0, 'SD', 'NULL', 'NULL', 'STK201901090001', '020/PKWT/VII/2019', '1980-01-01', 'Lingkungan Rowosari RT 001 RW 006 Karangjati Bergas', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'Lingkungan Rowosari RT 001 RW 006 Karangjati Bergas', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', '1900-01-01', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', '1900-01-01', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'Wagini', 'NULL', '1962-01-02', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 0, '2019-11-05 12:00:00', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '441', 0, 0, 0, '2020-02-02 02:02:00', '2019-03-28 12:08:13', 0, 3, 0, 0, 2000000.00, '', 0.00, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2');
INSERT INTO `karyawan` VALUES (8, '2009820609', 'LISTIYANTO', 'KAB SEMARANG', '1982-09-20', 'NULL', 'K/3', 'islam', 'l', 'JBT201901160016', 'NULL', 'LOK201907300005', 'GRD201908140990', 'NULL', '-', 'NULL', 'asset/img/user-photo/user.png', 'NULL', NULL, '2220683217', 'BANK201901250001', '0001528906241', '13005868123', '3322132009820002', 0, 0, 'SD', 'NULL', 'NULL', 'STK201901090001', '', '2009-06-29', 'KRAJAN RT 007 RW 002', 'WRINGIN PUTIH', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'KRAJAN RT 007 RW 002', 'WRINGIN PUTIH', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, ' SAMIAN', 'NULL', '1900-01-01', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'SULASMI', 'NULL', '1900-01-01', 'NULL', NULL, 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'ZENTI SUPRIHATIN', 'KAB SEMARANG', '1989-11-18', 'NULL', '', 'KRAJAN RT 007 RW 002', 'WRINGIN PUTIH', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'NIKAH', 0, '2019-11-05 12:00:00', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '439', 1, 1, 0, '2020-02-02 02:02:00', '2023-08-22 13:48:48', 0, 40, 4, 4, 2599265.00, 'non_matrix', 2480988.00, 2480988.00, '', '', '', 'BULANAN', 'NULL', '', '', '', '', '', '', '', '', '', '2');
INSERT INTO `karyawan` VALUES (9, '1809800612', 'ALI MUJTAHID', 'NULL', '1980-09-18', 'NULL', 'NULL', 'islam', 'l', 'JBT201901160016', 'NULL', 'LOK201907300005', 'GRD201908140989', 'NULL', '-', 'NULL', 'asset/img/user-photo/user.png', 'NULL', '-', '2220683764', 'NULL', '0001691704495', '13005868206', '33221809800005', 0, 0, 'SLTA', 'NULL', 'NULL', 'STK201901090001', '028/PKWT/IX/2020', '2012-06-08', 'Kalikopeng RT002 Rw004 Leyangan', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'Kalikopeng RT002 Rw004 Leyangan', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', '1900-01-01', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', '1900-01-01', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'Eka Saputri', 'NULL', '1989-03-28', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'NULL', 0, '2019-11-05 12:00:00', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '442', 1, 0, 0, '2020-02-02 02:02:00', '2020-01-07 14:06:59', 0, 2, 0, 12, 2055000.00, 'non_matrix', 2055000.00, 0.00, '', '', '', 'BULANAN', 'NULL', '', '', '', '', '', '', '', '', '', '2');
INSERT INTO `karyawan` VALUES (10, '2108930213', 'JUMARNO', 'KAB SEMARANG', '1993-08-21', 'NULL', 'K/0', 'islam', 'l', 'JBT201901160016', 'NULL', 'LOK201907300005', 'GRD201908140990', 'NULL', '-', 'NULL', 'asset/img/user-photo/user.png', 'NULL', NULL, '2220683063', 'BANK201901250001', '0001027845235', '14038215530', '3322132108930004', 0, 0, 'SD', 'NULL', 'NULL', 'STK201901090001', '', '2013-02-28', 'LINGKUNGAN GEMBONGAN RT 010 RW 004', 'KARANGJATI', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'LINGKUNGAN GEMBONGAN RT 010 RW 004', 'KARANGJATI', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'MARSUDI', 'KAB SEMARANG', '1962-04-08', 'SD', 'NULL', 'LINGKUNGAN GEMBONGAN RT 010 RW 004', 'KARANGJATI', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, 'JUMINAH', 'KAB SEMARANG', '1953-08-11', 'NULL', 'SD', 'LINGKUNGAN GEMBONGAN RT 010 RW 004', 'KARANGJATI', 'BERGAS', 'SEMARANG', 'JAWA TENGAH', 50552, '-', 'NULL', '1900-01-01', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 0, 'BELUM NIKAH', 0, '2023-08-08 14:31:04', '', 0, 'NULL', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 0, 0, '444', 0, 1, 0, '2020-02-02 02:02:00', '2023-08-22 13:48:48', 0, 40, 6, 4, 2549320.00, 'non_matrix', 2480988.00, 2480988.00, '', '', '', 'BULANAN', 'NULL', '', '', '', '', '', '', '', '', '', '2');

-- ----------------------------
-- Table structure for log_login_admin
-- ----------------------------
DROP TABLE IF EXISTS `log_login_admin`;
CREATE TABLE `log_login_admin`  (
  `id_admin` int NOT NULL,
  `tgl_login` datetime NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_login_admin
-- ----------------------------
INSERT INTO `log_login_admin` VALUES (2, '2023-11-05 22:59:13');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-05 23:00:45');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-05 23:06:49');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-05 23:41:30');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-06 00:11:47');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-07 21:05:49');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-07 21:07:34');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-07 21:08:01');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-10 19:59:14');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-10 19:59:15');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-10 19:59:15');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-10 19:59:15');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-10 22:20:23');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-11 09:05:26');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-11 20:56:23');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-13 20:30:57');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-23 20:30:53');
INSERT INTO `log_login_admin` VALUES (2, '2023-11-24 20:30:39');
INSERT INTO `log_login_admin` VALUES (2, '2023-12-06 20:42:37');
INSERT INTO `log_login_admin` VALUES (2, '2023-12-07 08:24:26');
INSERT INTO `log_login_admin` VALUES (2, '2023-12-07 12:14:10');

-- ----------------------------
-- Table structure for log_login_admin_super
-- ----------------------------
DROP TABLE IF EXISTS `log_login_admin_super`;
CREATE TABLE `log_login_admin_super`  (
  `id_admin` int NOT NULL,
  `tgl_login` datetime NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_login_admin_super
-- ----------------------------
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-05 22:57:36');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-05 22:59:13');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-05 23:00:45');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-05 23:06:49');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-05 23:41:30');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-06 00:11:47');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-07 21:05:49');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-07 21:07:34');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-07 21:08:01');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-10 19:59:11');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-10 19:59:15');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-10 19:59:15');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-10 19:59:15');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-10 22:20:23');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-11 09:05:26');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-11 20:56:23');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-13 20:30:57');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-23 20:30:53');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-11-24 20:30:39');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-12-06 20:42:37');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-12-07 08:24:26');
INSERT INTO `log_login_admin_super` VALUES (2, '2023-12-07 12:14:10');

-- ----------------------------
-- Table structure for log_login_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `log_login_karyawan`;
CREATE TABLE `log_login_karyawan`  (
  `id_karyawan` bigint NOT NULL,
  `tgl_login` datetime NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of log_login_karyawan
-- ----------------------------

-- ----------------------------
-- Table structure for master_komponen
-- ----------------------------
DROP TABLE IF EXISTS `master_komponen`;
CREATE TABLE `master_komponen`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sifat` enum('nominal','rumus') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type_first` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `first` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `operation` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type_second` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `second` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_company` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_by` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of master_komponen
-- ----------------------------
INSERT INTO `master_komponen` VALUES (1, 'KMP00001', 'Gaji Pokok', 'nominal', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2023-11-07 23:13:30', '1', '2023-11-07 23:13:34');
INSERT INTO `master_komponen` VALUES (2, 'KMP00002', 'Tunjangan PA', 'rumus', 'data', 'KMP00001', '*', 'variable', '7%', NULL, '1', '1', '2023-11-08 00:01:31', '1', '2023-11-08 00:01:38');
INSERT INTO `master_komponen` VALUES (3, 'KMP00003', 'Uang Makan 1 Hari', 'rumus', 'variable', '1%', '*', 'data', 'KMP00001', NULL, '1', '2', '2023-11-11 00:55:52', '2', '2023-11-11 00:55:52');
INSERT INTO `master_komponen` VALUES (4, 'KMP00004', 'Transport 1 hari', 'rumus', 'variable', '0.5%', '*', 'data', 'KMP00001', NULL, '1', '2', '2023-11-11 09:45:22', '2', '2023-11-11 09:45:22');
INSERT INTO `master_komponen` VALUES (5, 'KMP00005', 'Presensi', 'nominal', NULL, '', '', NULL, '', NULL, '1', '2', '2023-11-11 09:45:53', '2', '2023-11-11 09:45:53');
INSERT INTO `master_komponen` VALUES (6, 'KMP00006', 'Tunjangan Makan', 'rumus', 'data', 'KMP00003', '*', 'data', 'KMP00005', NULL, '1', '2', '2023-11-11 09:46:28', '2', '2023-11-11 09:46:28');
INSERT INTO `master_komponen` VALUES (7, 'KMP00007', 'Tunjangan Transport', 'rumus', 'data', 'KMP00004', '*', 'data', 'KMP00005', NULL, '1', '2', '2023-11-23 21:42:01', '2', '2023-11-23 21:42:01');
INSERT INTO `master_komponen` VALUES (8, 'KMP00008', 'Alpa', 'rumus', 'data', 'KMP00009', '-', 'data', 'KMP00005', NULL, '1', '2', '2023-11-23 21:43:40', '2', '2023-11-23 21:43:40');
INSERT INTO `master_komponen` VALUES (9, 'KMP00009', 'Periode Payroll', 'rumus', 'variable', '25', '', 'data', '', NULL, '1', '2', '2023-11-23 21:57:43', '2', '2023-11-23 21:57:43');
INSERT INTO `master_komponen` VALUES (10, 'KMP00010', 'BPJS Perusahaan', 'rumus', 'variable', '3%', '*', 'data', 'KMP00001', NULL, '1', '2', '2023-11-23 21:59:28', '2', '2023-11-23 21:59:28');
INSERT INTO `master_komponen` VALUES (11, 'KMP00011', 'BPJS Karyawan', 'rumus', 'variable', '1%', '*', 'data', 'KMP00001', NULL, '1', '2', '2023-11-23 22:06:09', '2', '2023-11-23 22:06:09');
INSERT INTO `master_komponen` VALUES (12, 'KMP00012', 'Tunjangan Jabatan', 'rumus', 'variable', '6%', '*', 'data', 'KMP00001', NULL, '1', '2', '2023-11-23 22:08:19', '2', '2023-11-23 22:08:19');
INSERT INTO `master_komponen` VALUES (13, 'KMP00013', 'Gaji per Hari', 'rumus', 'data', 'KMP00001', '/', 'data', 'KMP00009', NULL, '1', '2', '2023-11-23 22:09:33', '2', '2023-11-23 22:09:33');
INSERT INTO `master_komponen` VALUES (14, 'KMP00014', 'Potongan Alpa', 'rumus', 'data', 'KMP00013', '*', 'data', 'KMP00008', NULL, '1', '2', '2023-11-23 22:26:03', '2', '2023-11-23 22:26:03');
INSERT INTO `master_komponen` VALUES (15, 'KMP00015', 'Potongan cuti 1 hari', 'rumus', 'data', 'KMP00004', '+', 'data', 'KMP00018', NULL, '1', '2', '2023-12-07 01:06:07', '2', '2023-12-07 01:06:07');
INSERT INTO `master_komponen` VALUES (16, 'KMP00016', 'Count Cuti', 'nominal', NULL, '', '', NULL, '', NULL, '1', '2', '2023-12-07 01:06:47', '2', '2023-12-07 01:06:47');
INSERT INTO `master_komponen` VALUES (17, 'KMP00017', 'Potongan Izin / Cuti', 'rumus', 'data', 'KMP00015', '*', 'data', 'KMP00016', NULL, '1', '2', '2023-12-07 01:07:25', '2', '2023-12-07 01:07:25');
INSERT INTO `master_komponen` VALUES (18, 'KMP00018', 'Uang Makan 1 Hari 5000', 'rumus', 'data', 'KMP00003', '+', 'variable', '5000', NULL, '1', '2', '2023-12-07 14:12:22', '2', '2023-12-07 14:12:22');

-- ----------------------------
-- Table structure for master_menu
-- ----------------------------
DROP TABLE IF EXISTS `master_menu`;
CREATE TABLE `master_menu`  (
  `id_menu` bigint NOT NULL AUTO_INCREMENT,
  `nama` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `parent` bigint NOT NULL,
  `sequence` int NOT NULL,
  `url` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub_url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `icon` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'fa-chevron-circle-right',
  `status` tinyint(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_by` bigint NOT NULL,
  `update_by` bigint NOT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of master_menu
-- ----------------------------
INSERT INTO `master_menu` VALUES (1, 'Menu Utama', 0, 0, '#', '', 'fa-chevron-circle-right', 1, '2018-09-19 07:45:31', '2018-09-19 07:45:34', 1, 1);
INSERT INTO `master_menu` VALUES (2, 'Dashboard', 0, 1, 'dashboard', 'dashboard', 'fas fa-tachometer-alt', 1, '2018-09-28 13:30:43', '2018-09-28 13:30:43', 1, 1);
INSERT INTO `master_menu` VALUES (3, 'Pengelolaan Karyawan', 0, 3, '#', 'data_karyawan;add_employee;view_employee;data_mutasi;view_mutasi;data_peringatan;view_peringatan;data_kecelakaan_kerja;view_kecelakaan_kerja;data_grade;view_grade;data_perjanjian_kerja;view_perjanjian_kerja;data_karyawan_non_aktif;view_karyawan_non_aktif;data_denda;view_data_denda', 'fas fa-users', 1, '2018-11-08 15:50:19', '2018-11-08 15:50:19', 2, 2);
INSERT INTO `master_menu` VALUES (4, 'Data Karyawan', 3, 1, 'data_karyawan', 'data_karyawan;add_employee;view_employee', 'fas fa-user-tie', 1, '2018-10-24 08:49:45', '2018-10-24 08:49:45', 1, 1);
INSERT INTO `master_menu` VALUES (5, 'Mutasi / Promosi / Demosi', 3, 2, 'data_mutasi', 'data_mutasi;view_mutasi', 'fas fa-user-cog', 1, '2018-10-29 22:24:23', '2018-10-29 22:24:23', 2, 2);
INSERT INTO `master_menu` VALUES (6, 'Master Data', 0, 2, '#', 'master_bidang;master_level_struktur;master_level_jabatan;master_bagian;master_jabatan;master_loker;master_status_karyawan;master_indikator;master_form_aspek;master_aspek;master_grade;master_sistem_penggajian;master_mutasi_karyawan;master_daftar_rs;master_kategori_kecelakaan;master_shift;master_hari_libur;master_dokumen;master_surat_peringatan;master_surat_perjanjian;master_kelompok_shift;master_tarif_lembur;master_tarif_umk;master_izin_cuti;attendance;master_bank;master_induk_grade;master_alasan_keluar;master_perjalanan_dinas;view_intensif_perjalanan_dinas;detail_kategori_perjalanan_dinas;master_induk_tunjangan;payroll;master_tunjangan;master_insentif;master_bpjs;master_ptkp;master_tarif_pph_21;master_tarif_biaya_jabatan;master_rumus;master_bpjs_data;master_bpjs_karyawan;master_petugas_payroll;master_jenis_batasan_poin;master_kpi;master_periode_penilaian;master_kuisioner;master_bobot_sikap;master_konversi_kpi;master_konversi_sikap;master_konversi_presensi;master_konversi_kuartal;master_konversi_tahunan;master_konversi_insentif;master_konversi_gap;master_pph;master_petugas_pph;master_kuota_lembur;master_petugas_lembur;master_cuti_bersama;komponen_payroll;setting_komponen_payroll', 'fas fa-database', 1, '2022-12-19 22:39:23', '2022-12-19 22:39:23', 2, 2);
INSERT INTO `master_menu` VALUES (7, 'Master Indikator', 23, 1, 'master_indikator', '', 'fas fa-chevron-circle-right', 0, '2018-09-19 18:35:34', '2018-09-19 18:35:34', 1, 1);
INSERT INTO `master_menu` VALUES (8, 'Master Aspek Sikap', 23, 3, 'master_aspek', '', 'fas fa-chevron-circle-right', 0, '2018-09-19 18:36:22', '2018-09-19 18:36:22', 1, 1);
INSERT INTO `master_menu` VALUES (9, 'Master Form Aspek Sikap', 23, 2, 'master_form_aspek', '', 'fas fa-chevron-circle-right', 0, '2018-09-19 18:36:03', '2018-09-19 18:36:03', 1, 1);
INSERT INTO `master_menu` VALUES (10, 'Master Lokasi Kerja', 19, 5, 'master_loker', '', 'fas fa-chevron-circle-right', 1, '2018-09-19 18:32:16', '2018-09-19 18:32:16', 1, 1);
INSERT INTO `master_menu` VALUES (11, 'Master Level Struktur', 19, 1, 'master_level_struktur', '', 'fas fa-chevron-circle-right', 1, '2018-09-19 18:24:49', '2018-09-19 18:24:49', 1, 1);
INSERT INTO `master_menu` VALUES (12, 'Master Level Jabatan', 19, 2, 'master_level_jabatan', '', 'fas fa-chevron-circle-right', 1, '2018-09-19 18:25:07', '2018-09-19 18:25:07', 1, 1);
INSERT INTO `master_menu` VALUES (13, 'Master Jabatan', 19, 4, 'master_jabatan', '', 'fas fa-chevron-circle-right', 1, '2018-09-19 18:31:52', '2018-09-19 18:31:52', 1, 1);
INSERT INTO `master_menu` VALUES (14, 'Master Status Karyawan', 19, 6, 'master_status_karyawan', 'master_status_karyawan\r\n', 'fas fa-chevron-circle-right', 1, '2018-09-21 21:56:51', '2018-09-21 21:56:51', 1, 1);
INSERT INTO `master_menu` VALUES (15, 'Absensi', 0, 4, '#', 'data_jadwal_kerja;data_izin_cuti;view_izin_cuti;data_lembur;view_lembur;data_presensi;view_presensi;view_lembur_plan;data_perjalanan_dinas;view_perjalanan_dinas;data_presensi_pa;koreksi_perjalanan_dinas', 'fas fa-address-book', 0, '2019-01-04 16:02:10', '2019-01-04 16:02:10', 2, 2);
INSERT INTO `master_menu` VALUES (16, 'Penggajian', 0, 5, '#', 'periode_penggajian;data_ritasi;view_periode_penggajian;data_pinjaman;data_penggajian;log_data_penggajian;periode_lembur;view_periode_lembur;data_penggajian_lembur;log_data_penggajian_lembur;data_bpjs;data_pendukung;periode_penggajian_harian;view_periode_penggajian_harian;data_penggajian_harian;log_data_penggajian_harian', 'far fa-credit-card', 1, '2019-05-06 11:03:15', '2019-05-06 11:03:15', 1, 1);
INSERT INTO `master_menu` VALUES (17, 'Penilaian Kinerja', 0, 6, '#', 'data_konsep_sikap;data_konsep_kpi;data_agenda_sikap;data_agenda_kpi;data_input_sikap;data_input_kpi;data_log_agenda_sikap;data_log_agenda_kpi;data_hasil_sikap;view_data_hasil_sikap;data_hasil_kpi;view_data_hasil_kpi;concept;view_data_konsep_sikap;view_detail_konsep_sikap;view_data_konsep_kpi;view_detail_konsep_kpi;view_employee_kpi;input_kpi_value;data_hasil_group;view_employee_result_sikap;report_value_sikap;report_detail_sikap;view_employee_result_kpi;report_value_kpi;view_employee_result_group;report_value_group', 'fas fa-trophy', 0, '2018-09-28 13:42:16', '2018-09-28 13:42:16', 1, 1);
INSERT INTO `master_menu` VALUES (18, 'Rancangan Penilaian', 17, 1, '#', 'data_konsep_kpi;view_data_konsep_kpi;data_konsep_sikap;view_data_konsep_sikap;view_detail_konsep_sikap;view_data_konsep_kpi;view_detail_konsep_kpi', 'fas fa-flask', 1, '2018-09-28 13:45:38', '2018-09-28 13:45:38', 1, 1);
INSERT INTO `master_menu` VALUES (19, 'Master Karyawan', 6, 1, '#', 'master_level_struktur;master_level_jabatan;master_bagian;master_jabatan;master_loker;master_status_karyawan;master_bidang;master_grade;master_mutasi_karyawan;master_daftar_rs;master_kategori_kecelakaan;master_surat_peringatan;master_surat_perjanjian;master_kolompok_shift;master_kelompok_shift;master_bank;master_induk_grade;master_alasan_keluar', 'fas fa-users', 1, '2018-09-19 18:22:52', '2018-09-19 18:22:52', 1, 1);
INSERT INTO `master_menu` VALUES (20, 'Master Bagian', 19, 3, 'master_bagian', '', 'fas fa-chevron-circle-right', 1, '2018-09-19 18:28:54', '2018-09-19 18:28:54', 1, 1);
INSERT INTO `master_menu` VALUES (21, 'Master Absensi', 6, 2, '#', 'master_shift;master_hari_libur;master_izin_cuti;master_perjalanan_dinas;view_intensif_perjalanan_dinas;detail_kategori_perjalanan_dinas;master_cuti_bersama', 'fas fa-address-book', 1, '2018-11-14 14:34:50', '2018-11-14 14:34:50', 2, 2);
INSERT INTO `master_menu` VALUES (22, 'Master Penggajian', 6, 3, '#', 'master_tarif_lembur;master_tarif_umk;master_sistem_penggajian;master_induk_tunjangan;master_tunjangan;master_insentif;master_bpjs;master_pinjaman;master_tarif_biaya_jabatan;master_bpjs_data;master_bpjs_karyawan;master_petugas_payroll;master_petugas_pph;master_petugas_lembur;komponen_payroll;setting_komponen_payroll', 'far fa-credit-card', 1, '2019-04-24 14:56:07', '2019-04-24 14:56:07', 1, 1);
INSERT INTO `master_menu` VALUES (23, 'Master Penilaian', 6, 4, '#', 'master_indikator;master_form_aspek;master_aspek;master_jenis_batasan_poin;master_kpi;master_kuisioner;master_periode_penilaian;master_rumus;master_bobot_sikap;master_konversi_kpi;master_konversi_sikap;master_konversi_presensi;master_konversi_kuartal;master_konversi_tahunan;master_konversi_insentif;master_konversi_gap', 'fas fa-trophy', 1, '2018-09-19 18:34:53', '2018-09-19 18:34:53', 1, 1);
INSERT INTO `master_menu` VALUES (24, 'Rancangan Aspek Sikap', 18, 1, 'data_konsep_sikap', 'data_konsep_sikap;view_data_konsep_sikap;view_detail_konsep_sikap', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:45:25', '2018-09-28 13:45:25', 1, 1);
INSERT INTO `master_menu` VALUES (25, 'Rancangan KPI', 18, 2, 'data_konsep_kpi', 'data_konsep_kpi;view_data_konsep_kpi;view_data_konsep_kpi;view_detail_konsep_kpi', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:44:22', '2018-09-28 13:44:22', 1, 1);
INSERT INTO `master_menu` VALUES (26, 'Agenda Penilaian', 17, 2, 'data_agenda', 'data_agenda_sikap;data_agenda_kpi', 'fas fa-calendar-alt', 1, '2018-09-28 13:39:15', '2018-09-28 13:39:15', 1, 1);
INSERT INTO `master_menu` VALUES (27, 'Master Shift', 21, 2, 'master_shift', 'master_shift', 'fas fa-chevron-circle-right', 1, '2018-10-18 15:11:16', '2018-10-18 15:11:16', 1, 1);
INSERT INTO `master_menu` VALUES (28, 'Agenda Kpi', 26, 2, 'data_agenda_kpi', 'data_agenda_kpi', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:42:54', '2018-09-28 13:42:54', 1, 1);
INSERT INTO `master_menu` VALUES (29, 'Input Penilaian', 17, 3, '#', 'data_input_sikap;data_input_kpi;view_employee_kpi;input_kpi_value', 'fas fa-edit', 1, '2018-09-28 13:38:29', '2018-09-28 13:38:29', 1, 1);
INSERT INTO `master_menu` VALUES (30, 'Input Sikap', 29, 1, 'data_input_sikap', 'data_input_sikap', 'fas fa-chevron-circle-right', 0, '2018-09-28 13:47:14', '2018-09-28 13:47:14', 1, 1);
INSERT INTO `master_menu` VALUES (31, 'Input KPI', 29, 2, 'data_input_kpi', 'data_input_kpi;view_employee_kpi;input_kpi_value', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:47:03', '2018-09-28 13:47:03', 1, 1);
INSERT INTO `master_menu` VALUES (32, 'Hasil Penilaian', 17, 4, '#', 'data_hasil_sikap;data_hasil_kpi;data_hasil_group;view_employee_result_sikap;report_value_sikap;report_detail_sikap;view_employee_result_kpi;report_value_kpi;view_employee_result_group;report_value_group', 'fas fa-chart-line', 1, '2018-09-28 13:37:41', '2018-09-28 13:37:41', 1, 1);
INSERT INTO `master_menu` VALUES (33, 'Hasil Penilaian Sikap', 32, 1, 'data_hasil_sikap', 'data_hasil_sikap;view_employee_result_sikap;report_value_sikap;report_detail_sikap', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:47:50', '2018-09-28 13:47:50', 1, 1);
INSERT INTO `master_menu` VALUES (34, 'Hasil Penilaian Kpi', 32, 2, 'data_hasil_kpi', 'data_hasil_kpi;view_employee_result_kpi;report_value_kpi', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:48:16', '2018-09-28 13:48:16', 1, 1);
INSERT INTO `master_menu` VALUES (35, 'Master Bidang', 19, 2, 'master_bidang', 'master_bidang', 'fas fa-chevron-circle-right', 0, '2018-09-19 23:07:11', '2018-09-19 23:07:11', 1, 1);
INSERT INTO `master_menu` VALUES (37, 'Agenda Sikap', 26, 2, 'data_agenda_sikap', 'data_agenda_sikap', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:46:25', '2018-09-28 13:46:25', 1, 1);
INSERT INTO `master_menu` VALUES (38, 'Master Grade', 19, 8, 'master_induk_grade', 'master_induk_grade;master_grade', 'fas fa-chevron-circle-right', 1, '2018-09-26 18:26:06', '2018-09-26 18:26:06', 1, 1);
INSERT INTO `master_menu` VALUES (39, 'Sistem Penggajian', 22, 10, 'master_sistem_penggajian', 'master_sistem_penggajian', 'fas fa-chevron-circle-right', 1, '2022-11-28 21:39:42', '2022-11-28 21:39:42', 2, 2);
INSERT INTO `master_menu` VALUES (40, 'Master Mutasi / Promosi / Demosi', 19, 10, 'master_mutasi_karyawan', 'master_mutasi_karyawan', 'fas fa-chevron-circle-right', 1, '2018-09-26 18:27:48', '2018-09-26 18:27:48', 1, 1);
INSERT INTO `master_menu` VALUES (41, 'Master Daftar Rumah Sakit', 19, 11, 'master_daftar_rs', 'master_daftar_rs', 'fas fa-chevron-circle-right', 1, '2018-09-26 18:28:33', '2018-09-26 18:28:33', 1, 1);
INSERT INTO `master_menu` VALUES (42, 'Master Kategori Kecelakaan', 19, 12, 'master_kategori_kecelakaan', 'master_kategori_kecelakaan', 'fas fa-chevron-circle-right', 1, '2018-09-26 18:30:35', '2018-09-26 18:30:35', 1, 1);
INSERT INTO `master_menu` VALUES (43, 'Master Izin / Cuti', 21, 1, 'master_izin_cuti', 'master_izin_cuti', 'fas fa-chevron-circle-right', 1, '2018-10-19 10:35:37', '2018-10-19 10:35:37', 1, 1);
INSERT INTO `master_menu` VALUES (45, 'Master Hari Libur', 21, 3, 'master_hari_libur', 'naster_hari_libur', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:16:22', '2018-09-28 13:16:22', 1, 1);
INSERT INTO `master_menu` VALUES (46, 'Perjanjian Kerja', 3, 3, 'data_perjanjian_kerja', 'data_perjanjian_kerja;view_perjanjian_kerja', 'fas fa-file-contract', 1, '2018-10-31 09:02:34', '2018-10-31 09:02:34', 1, 1);
INSERT INTO `master_menu` VALUES (47, 'Peringatan', 3, 4, 'data_peringatan', 'data_peringatan;view_peringatan', 'fas fa-exclamation-triangle', 1, '2018-11-02 11:14:48', '2018-11-02 11:14:48', 2, 2);
INSERT INTO `master_menu` VALUES (48, 'Kecelakaan Kerja', 3, 6, 'data_kecelakaan_kerja', 'data_kecelakaan_kerja;view_kecelakaan_kerja', 'fas fa-ambulance', 1, '2018-11-07 14:31:14', '2018-11-07 14:31:14', 2, 2);
INSERT INTO `master_menu` VALUES (49, 'Karyawan Non Aktif', 3, 7, 'data_karyawan_non_aktif', 'data_karyawan_non_aktif;view_karyawan_non_aktif', 'fas fa-user-alt-slash', 1, '2018-11-08 15:49:56', '2018-11-08 15:49:56', 2, 2);
INSERT INTO `master_menu` VALUES (50, 'Jadwal Kerja', 15, 1, 'data_jadwal_kerja', 'data_jadwal_kerja', 'far fa-calendar-check', 1, '2018-09-28 13:23:56', '2018-09-28 13:23:56', 1, 1);
INSERT INTO `master_menu` VALUES (51, 'Izin / Cuti', 15, 2, 'data_izin_cuti', 'data_izin_cuti;view_izin_cuti', 'fas fa-calendar-times', 1, '2018-11-14 14:32:38', '2018-11-14 14:32:38', 2, 2);
INSERT INTO `master_menu` VALUES (52, 'Lembur', 15, 3, 'data_lembur', 'data_lembur;view_lembur;view_lembur_plan', 'fas fa-calendar-plus', 1, '2019-01-04 15:33:05', '2019-01-04 15:33:05', 2, 2);
INSERT INTO `master_menu` VALUES (53, 'Presensi', 15, 4, 'data_presensi', 'data_presensi;view_presensi', 'fas fa-tasks', 1, '2018-09-28 13:26:24', '2018-09-28 13:26:24', 1, 1);
INSERT INTO `master_menu` VALUES (54, 'Log Agenda', 17, 3, '#', 'data_log_agenda_sikap;data_log_agenda_kpi', 'fas fa-table', 1, '2018-09-28 13:36:33', '2018-09-28 13:36:33', 1, 1);
INSERT INTO `master_menu` VALUES (55, 'Log Agenda Sikap', 54, 1, 'data_log_agenda_sikap', 'data_log_agenda_sikap', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:34:54', '2018-09-28 13:34:54', 1, 1);
INSERT INTO `master_menu` VALUES (56, 'Log Agenda KPI', 54, 2, 'data_log_agenda_kpi', 'data_log_agenda_kpi', 'fas fa-chevron-circle-right', 1, '2018-09-28 13:36:02', '2018-09-28 13:36:02', 1, 1);
INSERT INTO `master_menu` VALUES (57, 'Master Dokumen', 6, 5, 'master_dokumen', 'master_dokumen', 'fas fa-book', 1, '2018-09-28 14:29:12', '2018-09-28 14:29:12', 1, 1);
INSERT INTO `master_menu` VALUES (59, 'Master Surat Peringatan', 19, 13, 'master_surat_peringatan', 'master_surat_peringatan', 'fas fa-chevron-circle-right', 1, '2018-10-17 10:24:26', '2018-10-17 10:24:26', 1, 1);
INSERT INTO `master_menu` VALUES (60, 'Master Surat Perjanjian', 19, 14, 'master_surat_perjanjian', 'master_surat_perjanjian', 'fas fa-chevron-circle-right', 1, '2018-10-18 09:22:28', '2018-10-18 09:22:28', 1, 1);
INSERT INTO `master_menu` VALUES (61, 'Master Kelompok Shift', 19, 14, 'master_kelompok_shift', 'master_kelompok_shift', 'fas fa-chevron-circle-right', 1, '2018-10-18 15:10:29', '2018-10-18 15:10:29', 1, 1);
INSERT INTO `master_menu` VALUES (63, 'Master Tarif Lembur', 22, 4, 'master_tarif_lembur', 'master_tarif_lembur', 'fas fa-chevron-circle-right', 1, '2022-11-28 21:37:15', '2022-11-28 21:37:15', 2, 2);
INSERT INTO `master_menu` VALUES (64, 'Master Tarif UMK', 22, 5, 'master_tarif_umk', 'master_tarif_umk', 'fas fa-chevron-circle-right', 1, '2022-11-28 21:37:30', '2022-11-28 21:37:30', 2, 2);
INSERT INTO `master_menu` VALUES (65, 'Grade Karyawan', 3, 5, 'data_grade', 'data_grade;view_grade', 'fab fa-glide', 1, '2018-11-07 08:42:59', '2018-11-07 08:42:59', 2, 2);
INSERT INTO `master_menu` VALUES (66, 'Master Bank', 19, 15, 'master_bank', 'master_bank', 'fas fa-chevron-circle-right', 1, '2019-01-17 14:06:08', '2019-01-17 14:06:08', 2, 2);
INSERT INTO `master_menu` VALUES (67, 'Denda Karyawan', 3, 4, 'data_denda', 'data_denda;view_data_denda', 'fas fa-dollar-sign', 1, '2019-01-31 11:19:42', '2019-01-31 11:19:42', 2, 2);
INSERT INTO `master_menu` VALUES (68, 'Master Alasan Keluar', 19, 16, 'master_alasan_keluar', 'master_alasan_keluar', 'fas fa-chevron-circle-right', 1, '2019-02-26 09:26:35', '2019-02-26 09:26:31', 2, 2);
INSERT INTO `master_menu` VALUES (69, 'Master Perjalanan Dinas', 21, 5, 'master_perjalanan_dinas', 'master_perjalanan_dinas;view_intensif_perjalanan_dinas;detail_kategori_perjalanan_dinas', 'fas fa-chevron-circle-right', 1, '2022-12-19 22:38:17', '2022-12-19 22:38:17', 2, 2);
INSERT INTO `master_menu` VALUES (70, 'Data Perjalanan Dinas', 15, 5, 'data_perjalanan_dinas', 'data_perjalanan_dinas;view_perjalanan_dinas;koreksi_perjalanan_dinas', 'fas fa-car', 1, '2019-03-26 13:42:41', '2019-03-26 13:42:46', 2, 2);
INSERT INTO `master_menu` VALUES (71, 'Master Tunjangan', 22, 9, 'master_induk_tunjangan', 'master_induk_tunjangan;master_tunjangan', 'fas fa-chevron-circle-right', 1, '2022-11-28 21:39:28', '2022-11-28 21:39:28', 2, 2);
INSERT INTO `master_menu` VALUES (72, 'Periode Penggajian', 16, 3, 'periode_penggajian', 'periode_penggajian;view_periode_penggajian', 'fas fa-chevron-circle-right', 1, '2019-04-09 19:22:29', '2019-04-09 19:22:29', 1, 1);
INSERT INTO `master_menu` VALUES (73, 'Master Insentif', 22, 8, 'master_insentif', 'master_insentif', 'fas fa-chevron-circle-right', 1, '2022-11-28 21:39:12', '2022-11-28 21:39:12', 2, 2);
INSERT INTO `master_menu` VALUES (74, 'Data Ritasi', 16, 4, 'data_ritasi', 'data_ritasi', 'fas fa-chevron-circle-right', 0, '2019-04-09 14:38:25', '2019-04-09 14:38:25', 1, 1);
INSERT INTO `master_menu` VALUES (75, 'Master BPJS', 22, 7, 'master_bpjs', 'master_bpjs_data;master_bpjs_karyawan', 'fas fa-chevron-circle-right', 1, '2022-11-28 21:39:04', '2022-11-28 21:39:04', 2, 2);
INSERT INTO `master_menu` VALUES (77, 'Data Pinjaman', 16, 4, 'data_pinjaman', 'data_pinjaman', 'fas fa-chevron-circle-right', 0, '2019-04-11 14:19:32', '2019-04-11 14:19:32', 1, 1);
INSERT INTO `master_menu` VALUES (78, 'Master PTKP', 118, 2, 'master_ptkp', 'master_ptkp', 'fas fa-chevron-circle-right', 1, '2021-01-11 10:51:24', '2021-01-11 10:51:24', 2, 2);
INSERT INTO `master_menu` VALUES (79, 'Master Tarif PPH 21', 118, 3, 'master_tarif_pph_21', 'master_tarif_pph_21', 'fas fa-chevron-circle-right', 1, '2021-01-11 10:50:40', '2021-01-11 10:50:40', 2, 2);
INSERT INTO `master_menu` VALUES (80, 'Master Tarif Biaya Jabatan', 22, 6, 'master_tarif_biaya_jabatan', 'master_tarif_biaya_jabatan', 'fas fa-chevron-circle-right', 1, '2022-11-28 21:38:55', '2022-11-28 21:38:55', 2, 2);
INSERT INTO `master_menu` VALUES (81, 'Master Rumus', 6, 6, 'master_rumus', 'master_rumus', 'fas fa-bong', 0, '2019-04-15 14:01:21', '2019-04-15 14:01:21', 2, 2);
INSERT INTO `master_menu` VALUES (82, 'BPJS Data', 75, 1, 'master_bpjs_data', 'master_bpjs_data', 'fas fa-chevron-circle-right', 0, '2019-04-24 14:55:03', '2019-04-24 14:55:03', 1, 1);
INSERT INTO `master_menu` VALUES (83, 'Data BPJS', 16, 4, 'data_bpjs', 'data_bpjs', 'fas fa-chevron-circle-right', 0, '2019-05-17 12:41:42', '2019-05-17 12:41:42', 1, 1);
INSERT INTO `master_menu` VALUES (84, 'Data Penggajian', 16, 6, 'data_penggajian', 'data_penggajian', 'fas fa-chevron-circle-right', 1, '2019-04-25 08:59:25', '2019-04-25 08:59:25', 1, 1);
INSERT INTO `master_menu` VALUES (85, 'Log Data Penggajian', 16, 9, 'log_data_penggajian', 'log_data_penggajian', 'fas fa-chevron-circle-right', 1, '2019-05-03 15:22:47', '2019-05-03 15:22:47', 1, 1);
INSERT INTO `master_menu` VALUES (86, 'Periode Lembur', 16, 3, 'periode_lembur', 'periode_lembur;view_periode_lembur', 'fas fa-chevron-circle-right', 1, '2019-05-06 11:02:49', '2019-05-06 11:02:49', 1, 1);
INSERT INTO `master_menu` VALUES (87, 'PPh-21 Karyawan', 115, 2, 'data_pph_21', 'data_pph_21', 'fas fa-chevron-circle-right', 1, '2020-05-19 10:25:37', '2020-05-19 10:25:37', 2, 2);
INSERT INTO `master_menu` VALUES (88, 'Log Data Penggajian Lembur', 16, 9, 'log_data_penggajian_lembur', 'log_data_penggajian_lembur', 'fas fa-chevron-circle-right', 1, '2019-05-07 08:50:06', '2019-05-07 08:50:06', 1, 1);
INSERT INTO `master_menu` VALUES (89, 'Data Pendukung', 16, 1, 'data_pendukung/data_ritasi', 'data_pendukung', 'fas fa-chevron-circle-right', 1, '2019-05-17 13:28:55', '2019-05-17 13:28:55', 1, 1);
INSERT INTO `master_menu` VALUES (90, 'Data Penggajian Lembur', 16, 6, 'data_penggajian_lembur', 'data_penggajian_lembur', 'fas fa-chevron-circle-right', 1, '2019-05-06 13:18:55', '2019-05-06 13:18:55', 1, 1);
INSERT INTO `master_menu` VALUES (91, 'Master Petugas Payroll', 22, 11, 'master_petugas_payroll', 'master_petugas_payroll', 'fas fa-chevron-circle-right', 1, '2022-11-28 21:36:32', '2022-11-28 21:36:32', 2, 2);
INSERT INTO `master_menu` VALUES (92, 'Periode Penggajian (Harian)', 16, 2, 'periode_penggajian_harian', 'periode_penggajian_harian;view_periode_penggajian_harian', 'fas fa-chevron-circle-right', 0, '2019-04-09 19:22:29', '2019-04-09 19:22:29', 1, 1);
INSERT INTO `master_menu` VALUES (93, 'Data Penggajian (Harian)', 16, 5, 'data_penggajian_harian', 'data_penggajian_harian', 'fas fa-chevron-circle-right', 1, '2019-04-25 08:59:25', '2019-04-25 08:59:25', 1, 1);
INSERT INTO `master_menu` VALUES (94, 'Log Data Penggajian (Harian)', 16, 8, 'log_data_penggajian_harian', 'log_data_penggajian_harian', 'fas fa-chevron-circle-right', 0, '2019-05-03 15:22:47', '2019-05-03 15:22:47', 1, 1);
INSERT INTO `master_menu` VALUES (95, 'Master Jenis Batasan Poin', 23, 1, 'master_jenis_batasan_poin', 'master_jenis_batasan_poin', 'fas fa-chevron-circle-right', 1, '2020-01-24 10:37:12', '2020-01-24 10:37:12', 2, 2);
INSERT INTO `master_menu` VALUES (96, 'Master Kpi', 23, 2, 'master_kpi', 'master_kpi', 'fas fa-chevron-circle-right', 1, '2020-01-24 10:50:16', '2020-01-24 10:50:16', 2, 2);
INSERT INTO `master_menu` VALUES (97, 'Master Sikap', 23, 3, '#', 'master_aspek;master_form_aspek;master_bobot_sikap;master_kuisioner', 'fas fa-chevron-circle-right', 1, '2020-01-24 10:51:02', '2020-01-24 10:51:02', 2, 2);
INSERT INTO `master_menu` VALUES (98, 'Master Aspek Sikap', 97, 1, 'master_aspek', 'master_aspek;master_kuisioner', 'fas fa-angle-double-right', 1, '2020-01-24 10:52:47', '2020-01-24 10:52:47', 2, 2);
INSERT INTO `master_menu` VALUES (99, 'Master Form Aspek Sikap', 97, 2, 'master_form_aspek', 'master_form_aspek', 'fas fa-angle-double-right', 1, '2020-01-24 10:54:06', '2020-01-24 10:54:06', 2, 2);
INSERT INTO `master_menu` VALUES (100, 'Master Bobot Sikap', 97, 3, 'master_bobot_sikap', 'master_bobot_sikap', 'fas fa-angle-double-right', 1, '2020-01-24 10:55:28', '2020-01-24 10:55:28', 2, 2);
INSERT INTO `master_menu` VALUES (101, 'Master Periode Penilaian', 23, 3, 'master_periode_penilaian', 'master_periode_penilaian', 'fas fa-chevron-circle-right', 1, '2020-01-24 10:57:13', '2020-01-24 10:57:13', 2, 2);
INSERT INTO `master_menu` VALUES (102, 'Master Konversi Nilai', 23, 5, '#', '#;master_konversi_kpi;master_konversi_sikap;master_konversi_presensi;master_konversi_kuartal;master_konversi_tahunan;master_konversi_gap', 'fas fa-chevron-circle-right', 1, '2020-01-24 11:02:10', '2020-01-24 11:02:10', 2, 2);
INSERT INTO `master_menu` VALUES (103, 'Konversi Kpi', 102, 1, 'master_konversi_kpi', 'master_konversi_kpi', 'fas fa-angle-double-right', 1, '2020-01-24 11:03:40', '2020-01-24 11:03:40', 2, 2);
INSERT INTO `master_menu` VALUES (104, 'Konversi Sikap', 102, 2, 'master_konversi_sikap', 'master_konversi_sikap', 'fas fa-angle-double-right', 1, '2020-01-24 11:04:54', '2020-01-24 11:04:54', 2, 2);
INSERT INTO `master_menu` VALUES (105, 'Konversi Presensi', 102, 3, 'master_konversi_presensi', 'master_konversi_presensi', 'fas fa-angle-double-right', 1, '2020-01-24 11:07:12', '2020-01-24 11:07:12', 2, 2);
INSERT INTO `master_menu` VALUES (106, 'Konversi Periode', 102, 4, 'master_konversi_kuartal', 'master_konversi_kuartal', 'fas fa-angle-double-right', 1, '2020-01-24 11:09:31', '2020-01-24 11:09:31', 2, 2);
INSERT INTO `master_menu` VALUES (107, 'Konversi Tahunan', 102, 5, 'master_konversi_tahunan', 'master_konversi_tahunan', 'fas fa-angle-double-right', 1, '2020-01-24 11:10:59', '2020-01-24 11:10:59', 2, 2);
INSERT INTO `master_menu` VALUES (108, 'Konversi Gap', 102, 6, 'master_konversi_gap', 'master_konversi_gap', 'fas fa-angle-double-right', 1, '2020-01-24 11:11:57', '2020-01-24 11:11:57', 2, 2);
INSERT INTO `master_menu` VALUES (109, 'Master Rumus', 23, 6, 'master_rumus', 'master_rumus', 'fas fa-chevron-circle-right', 1, '2020-01-24 11:12:46', '2020-01-24 11:12:46', 2, 2);
INSERT INTO `master_menu` VALUES (110, 'Hasil Penilaian Gabungan', 32, 3, 'data_hasil_group', 'data_hasil_group;view_employee_result_group;report_value_group', 'fas fa-chevron-circle-right', 1, '2020-01-24 11:12:46', '2020-01-24 11:12:46', 2, 2);
INSERT INTO `master_menu` VALUES (111, 'Presensi PA', 15, 6, 'data_presensi_pa', 'data_presensi_pa', 'fas fa-tasks', 1, '2020-02-18 10:45:44', '2020-02-18 10:45:44', 2, 2);
INSERT INTO `master_menu` VALUES (112, 'Non Karyawan', 0, 7, 'data_non_karyawan', 'data_non_karyawan;transaksi_non_karyawan;view_transaksi_non_karyawan', 'far fa-user-circle', 1, '2020-03-19 08:28:33', '2020-03-19 08:28:33', 2, 2);
INSERT INTO `master_menu` VALUES (113, 'Data Non Karyawan', 112, 1, 'data_non_karyawan', 'data_non_karyawan', 'fas fa-chevron-circle-right', 1, '2020-03-19 08:31:17', '2020-03-19 08:31:17', 2, 2);
INSERT INTO `master_menu` VALUES (114, 'Transaksi', 112, 2, 'transaksi_non_karyawan', 'transaksi_non_karyawan;view_transaksi_non_karyawan', 'fas fa-chevron-circle-right', 1, '2020-03-19 08:32:29', '2020-03-19 08:32:29', 2, 2);
INSERT INTO `master_menu` VALUES (115, 'PPH 21', 0, 8, 'pph_21', 'pph_21;data_pph_21;pph_21_non_karyawan;kode_akun;data_pph21_harian', 'fas fa-hand-holding-usd', 1, '2020-03-26 11:35:55', '2020-03-26 11:35:55', 2, 2);
INSERT INTO `master_menu` VALUES (116, 'Pph-21 Non Karyawan', 115, 3, 'pph_21_non_karyawan', 'dashboard_tahunan', 'fas fa-chevron-circle-right', 1, '2020-05-19 10:25:22', '2020-05-19 10:25:22', 2, 2);
INSERT INTO `master_menu` VALUES (117, 'Data Kode Akun', 115, 1, 'kode_akun', 'kode_akun', 'fas fa-clipboard-list', 1, '2020-05-19 10:24:20', '2020-05-19 10:24:20', 2, 2);
INSERT INTO `master_menu` VALUES (118, 'Master Pph', 6, 7, '#', 'master_pph;master_kode_akun;master_tarif_pph_21;master_ptkp', 'fas fa-money-bill-wave', 1, '2021-01-11 10:49:07', '2021-01-11 10:49:07', 2, 2);
INSERT INTO `master_menu` VALUES (119, 'Master Kode Akun', 118, 4, 'master_kode_akun', 'master_kode_akun', 'fas fa-chevron-circle-right', 1, '2021-01-11 10:49:45', '2021-01-11 10:49:45', 2, 2);
INSERT INTO `master_menu` VALUES (120, 'Master Petugas PPH', 22, 2, 'master_petugas_pph', 'master_petugas_pph', 'fas fa-chevron-circle-right', 1, '2019-04-09 10:26:23', '2019-04-09 10:26:23', 1, 1);
INSERT INTO `master_menu` VALUES (121, 'Pph-21 Karyawan Harian', 115, 4, 'data_pph21_harian', 'data_pph21_harian', 'fas fa-user-clock', 1, '2021-09-15 15:51:13', '2021-09-15 15:51:13', 2, 2);
INSERT INTO `master_menu` VALUES (122, 'Master Kuota Lembur', 6, 8, 'master_kuota_lembur', 'master_kuota_lembur;view_kuota_lembur', 'fas fa-clock', 1, '2022-09-14 08:44:53', '2022-09-14 08:44:53', 2, 2);
INSERT INTO `master_menu` VALUES (123, 'Master Petugas Lembur', 22, 3, 'master_petugas_lembur', 'master_petugas_lembur', 'fas fa-chevron-circle-right', 1, '2022-11-28 21:33:15', '2022-11-28 21:33:15', 2, 2);
INSERT INTO `master_menu` VALUES (124, 'Master Cuti Bersama', 21, 4, 'master_cuti_bersama', 'master_cuti_bersama', 'fas fa-chevron-circle-right', 1, '2022-12-19 22:36:54', '2022-12-19 22:36:54', 2, 2);
INSERT INTO `master_menu` VALUES (125, 'Learning', 0, 6, 'self_learning', 'self_learning;setting_materi;data_materi;view_soal_learning;view_file_materi_learning;setting_materi_pelatihan;riwayat_pelatihan', 'fas fa-chalkboard-teacher', 0, '2023-07-15 22:38:35', '2023-07-15 22:38:35', 2, 2);
INSERT INTO `master_menu` VALUES (126, 'Setting Materi', 125, 1, 'setting_materi', 'setting_materi;view_soal_learning;view_file_materi_learning', 'fas fa-sliders-h', 1, '2023-06-10 09:22:53', '2023-06-10 09:22:53', 1, 1);
INSERT INTO `master_menu` VALUES (127, 'Data Materi', 125, 2, 'data_materi', 'data_materi', 'fas fa-chalkboard', 1, '2023-06-10 10:21:43', '2023-06-10 10:21:43', 1, 1);
INSERT INTO `master_menu` VALUES (128, 'Setting Materi & Penilaian', 125, 3, 'setting_materi_pelatihan', 'setting_materi_pelatihan', 'fas fa-toolbox', 1, '2023-06-10 10:21:43', '2023-06-10 10:21:43', 1, 1);
INSERT INTO `master_menu` VALUES (129, 'Riwayat Pelatihan', 125, 4, 'riwayat_pelatihan', 'riwayat_pelatihan', 'fas fa-history', 1, '2023-06-10 10:24:30', '2023-06-10 10:24:30', 1, 1);
INSERT INTO `master_menu` VALUES (130, 'Komponen Payroll', 22, 1, 'komponen_payroll', 'komponen_payroll', 'fas fa-chalkboard-teacher', 1, '2023-06-10 10:24:30', '2023-06-10 10:24:30', 1, 1);
INSERT INTO `master_menu` VALUES (131, 'Setting Rumus', 22, 2, 'setting_komponen_payroll', 'setting_komponen_payroll', 'fas fa-user-cog', 1, '2023-06-10 10:24:30', '2023-06-10 10:24:30', 1, 1);

-- ----------------------------
-- Table structure for master_rumus_payroll
-- ----------------------------
DROP TABLE IF EXISTS `master_rumus_payroll`;
CREATE TABLE `master_rumus_payroll`  (
  `id_rumus` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `penambah` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pengurang` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_by` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_by` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_rumus`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of master_rumus_payroll
-- ----------------------------
INSERT INTO `master_rumus_payroll` VALUES (1, 'RMP00001', 'TEST', 'KMP00002;KMP00001;KMP00014;KMP00017', 'KMP00014', '1', '2', '2', '2023-11-24 20:32:20', '2023-11-24 20:32:20');
INSERT INTO `master_rumus_payroll` VALUES (2, 'RMP00002', 'TESTs', 'KMP00002;KMP00001;KMP00014;KMP00017', 'KMP00014', '1', '2', '2', '2023-11-24 20:32:20', '2023-11-24 20:32:20');

-- ----------------------------
-- Table structure for root_password
-- ----------------------------
DROP TABLE IF EXISTS `root_password`;
CREATE TABLE `root_password`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `encrypt` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `plain` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of root_password
-- ----------------------------
INSERT INTO `root_password` VALUES (1, '97b09ff5df3c06b0d87fb589cec4724bf0f461bf5b02cc8a7fbd55b2b05d7320d46f707fbf42cafe6c83a752c9b57c3b5ddaad626af0fd3ad645d8957c816d04', 'r@h4s1a');

SET FOREIGN_KEY_CHECKS = 1;
