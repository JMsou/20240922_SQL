SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE code = '1001';

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE code = '1001' OR code = '1002';

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE code IN ('1001','1002');

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE code = '1001' OR ch_name = '北新竹';

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE ch_name LIKE '台_';

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE ch_name LIKE '台%';

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE ch_name LIKE '%港';

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE id <= 10;

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE id <= 50 AND id >= 10;

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE id BETWEEN 10 AND 20;

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE id NOT BETWEEN 10 AND 20;

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
WHERE id <= 10 OR id >= 50;

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
ORDER BY id DESC;

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
ORDER BY code ;

SELECT id as 序號, code as 代碼, ch_name as 車站中文名稱, en_name as 車站英文名稱
FROM taiwanrailwaystationcode
ORDER BY en_name 
LIMIT 10;