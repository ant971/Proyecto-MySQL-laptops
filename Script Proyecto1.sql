-- Analisis previo
-- Antes de Empezar con el analisis, debemos comprender de que esta compuesta la tabla

-- llamado de las pc vendidas por marca
select Company, count(Price) from pc
group by Company;

-- total de registros en la tabla
select count(*) as total_registros from pc;

-- estadisticas descriptivas de la columna precio (hay que realizar el cambio de moneda
select avg(Price) as precio_promedio,
min(Price) as precio_minimo, 
max(Price) as precio_maximo from pc;

-- obtener el numero y tipos de Ram que hay en la tabla
select Ram, count(Price) from pc
group by Ram;

-- pc vendidas por el tipo de ram (no es lo mismo)
SELECT Company, Ram, COUNT(Ram) 
FROM pc 
GROUP BY Company, Ram;

-- obtener el numero y tipo de Cpu de los registros
select Cpu, count(Price) from pc
group by Cpu;

-- obtener los modelos y Cpu de cada empresa
select Company, Cpu, count(Price) from pc
group by Company, Cpu;

-- obtener las laptops por tipo de almacenamiento
select Company, Memory, count(Price) from pc 
group by Company, Memory;

-- consultas de los SO que utiliza cada pc
select Company, OpSys, count(price) from pc 
group by Company, OpSys;

-- variedad de pc por Gpu
SELECT Company, Gpu, COUNT(Gpu) as total_GPU 
FROM pc 
GROUP BY Company, Gpu;

-- variedad de tamaño
SELECT Company, Inches, COUNT(Price) as Unidades_totales
FROM pc 
GROUP BY Company, Inches;