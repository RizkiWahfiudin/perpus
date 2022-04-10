/*
 Navicat MySQL Data Transfer

 Source Server         : DB-Hosting
 Source Server Type    : MySQL
 Source Server Version : 100334
 Source Host           : 103.153.3.20:3306
 Source Schema         : rizkigas_project

 Target Server Type    : MySQL
 Target Server Version : 100334
 File Encoding         : 65001

 Date: 10/04/2022 11:06:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_biaya_denda
-- ----------------------------
DROP TABLE IF EXISTS `tbl_biaya_denda`;
CREATE TABLE `tbl_biaya_denda`  (
  `id_biaya_denda` int(11) NOT NULL AUTO_INCREMENT,
  `harga_denda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `stat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_tetap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_biaya_denda`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_biaya_denda
-- ----------------------------
INSERT INTO `tbl_biaya_denda` VALUES (1, '4000', 'Aktif', '2019-11-23');

-- ----------------------------
-- Table structure for tbl_buku
-- ----------------------------
DROP TABLE IF EXISTS `tbl_buku`;
CREATE TABLE `tbl_buku`  (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `buku_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_rak` int(11) NULL DEFAULT NULL,
  `sampul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `penerbit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pengarang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `thn_buku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `jml` int(11) NULL DEFAULT NULL,
  `tgl_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_buku`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_buku
-- ----------------------------
INSERT INTO `tbl_buku` VALUES (8, 'BK001', 2, 0, '8bc18ab3f51c5c1211cfb31ce6888773.jpg', '132-123-234-231', '0', 'CARA MUDAH BELAJAR PEMROGRAMAN C++', 'INFORMATIKA BANDUNG', 'BUDI RAHARJO ', '2012', '<table class=\"table table-bordered\" style=\"background-color: rgb(255, 255, 255); width: 653px; color: rgb(51, 51, 51);\"><tbody><tr><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Tipe Buku</td><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Kertas</td></tr><tr><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Bahasa</td><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Indonesia</td></tr></tbody></table>', 23, '2022-01-24 21:52:27');
INSERT INTO `tbl_buku` VALUES (11, 'BK002', 7, 0, '0', '12365-4353-3523', '0', 'Pengantar Ekonomi', 'PT. Maju Jaya', 'Anonymous', '2020', '<p>Bahasa Indonesia</p>', 1, '2022-01-03 21:43:38');

-- ----------------------------
-- Table structure for tbl_denda
-- ----------------------------
DROP TABLE IF EXISTS `tbl_denda`;
CREATE TABLE `tbl_denda`  (
  `id_denda` int(11) NOT NULL AUTO_INCREMENT,
  `pinjam_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `denda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lama_waktu` int(11) NOT NULL,
  `tgl_denda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_denda`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_denda
-- ----------------------------
INSERT INTO `tbl_denda` VALUES (3, 'PJ001', '0', 0, '2020-05-20');
INSERT INTO `tbl_denda` VALUES (5, 'PJ009', '0', 0, '2020-05-20');

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES (2, 'Pemrograman');
INSERT INTO `tbl_kategori` VALUES (7, 'Ekonomi');

-- ----------------------------
-- Table structure for tbl_pinjam
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pinjam`;
CREATE TABLE `tbl_pinjam`  (
  `id_pinjam` int(11) NOT NULL AUTO_INCREMENT,
  `pinjam_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `anggota_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `buku_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_pinjam` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `tgl_balik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_kembali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pinjam`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pinjam
-- ----------------------------
INSERT INTO `tbl_pinjam` VALUES (1, 'PJ001', 'WEB-0003', 'BK001', 'Dipinjam', '2022-01-03', 2, '2022-01-05', '0');
INSERT INTO `tbl_pinjam` VALUES (2, 'PJ001', 'WEB-0003', 'BK002', 'Dipinjam', '2022-01-03', 2, '2022-01-05', '0');
INSERT INTO `tbl_pinjam` VALUES (3, 'PJ003', 'WEB-0003', 'BK001', 'Dipinjam', '2022-01-03', 3, '2022-01-06', '0');
INSERT INTO `tbl_pinjam` VALUES (4, 'PJ003', 'WEB-0003', 'BK002', 'Dipinjam', '2022-01-03', 3, '2022-01-06', '0');
INSERT INTO `tbl_pinjam` VALUES (5, 'PJ003', 'WEB-0003', 'BK002', 'Dipinjam', '2022-01-03', 3, '2022-01-06', '0');

-- ----------------------------
-- Table structure for tbl_rak
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rak`;
CREATE TABLE `tbl_rak`  (
  `id_rak` int(11) NOT NULL AUTO_INCREMENT,
  `nama_rak` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_rak`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_rak
-- ----------------------------
INSERT INTO `tbl_rak` VALUES (1, 'Rak Buku 1');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `anggota_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` enum('Petugas','Anggota') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenkel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `telepon` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_bergabung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_login`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'WEB-0001', 'admin', '202cb962ac59075b964b07152d234b70', 'Petugas', 'Administrator', 'Sidoarjo', '2000-01-01', 'Laki-Laki', 'Sidoarjo', '0812345678', 'admin@google.com', '2019-11-20', 'no-image.jpg');
INSERT INTO `tbl_user` VALUES (2, 'WEB-0002', 'user1', '202cb962ac59075b964b07152d234b70', 'Anggota', 'User', 'Jakarta', '1999-06-18', 'Perempuan', 'Jakarta', '08123123185', 'user@google.com', '2019-11-21', 'no-image.jpg');
INSERT INTO `tbl_user` VALUES (9, 'WEB-0003', 'user2', '202cb962ac59075b964b07152d234b70', 'Anggota', 'User', 'Surabaya', '1999-06-18', 'Laki-Laki', 'Surabaya', '08123123185', 'user@google.com', '2019-11-21', 'no-image.jpg');

SET FOREIGN_KEY_CHECKS = 1;
