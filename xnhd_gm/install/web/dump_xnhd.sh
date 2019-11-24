echo "create database xnhd_base; use xnhd_base; " > xnhd.sql
mysqldump -uadmin -h10.66.108.45 -pSDO8r0AsKo0A5 xnhd_base permissions staff roles role_user permission_role >> xnhd.sql
mysqldump -uadmin -h10.66.108.45 -pSDO8r0AsKo0A5 xnhd_base -d accounts >> xnhd.sql
echo "create database sdo_base; use sdo_base; " >> xnhd.sql
mysqldump -uadmin -h10.66.108.45 -pSDO8r0AsKo0A5 sdo_base -d >> xnhd.sql
echo "create database sdo_order; use sdo_order; " >> xnhd.sql
mysqldump -uadmin -h10.66.108.45 -pSDO8r0AsKo0A5 sdo_order -d >> xnhd.sql
echo "create database sdo_gm_basic; use sdo_gm_basic; " >> xnhd.sql
mysqldump -uadmin -h10.66.108.45 -pSDO8r0AsKo0A5 sdo_gm_basic -d >> xnhd.sql

echo "create database xnhd_cms_basic; use xnhd_cms_basic; " >> xnhd.sql
mysqldump -uadmin -h10.66.137.202 -pSDO8r0AsKo0A5 xnhd_cms_basic >> xnhd.sql
echo "create database dmz_cms_basic; use dmz_cms_basic; " >> xnhd.sql
mysqldump -uadmin -h10.66.137.202 -pSDO8r0AsKo0A5 dmz_cms_basic >> xnhd.sql
echo "create database sdo_bbs_basic; use sdo_bbs_basic; " >> xnhd.sql
mysqldump -uadmin -h10.66.137.202 -pSDO8r0AsKo0A5 sdo_bbs_basic >> xnhd.sql
echo "create database sdo_cms_basic; use sdo_cms_basic; " >> xnhd.sql
mysqldump -uadmin -h10.66.137.202 -pSDO8r0AsKo0A5 sdo_cms_basic >> xnhd.sql
echo "create database wsdo_bbs_basic; use wsdo_bbs_basic; " >> xnhd.sql
mysqldump -uadmin -h10.66.137.202 -pSDO8r0AsKo0A5 wsdo_bbs_basic >> xnhd.sql
echo "create database wsdo_cms_basic; use wsdo_cms_basic; " >> xnhd.sql
mysqldump -uadmin -h10.66.137.202 -pSDO8r0AsKo0A5 wsdo_cms_basic >> xnhd.sql
echo "create database wsdo_order; use wsdo_order; " >> xnhd.sql
mysqldump -uadmin -h10.66.137.202 -pSDO8r0AsKo0A5 wsdo_order >> xnhd.sql
