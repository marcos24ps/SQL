use sys;
drop table if exists `sys`.pedidos;
drop table if exists `sys`.productos;

CREATE TABLE `sys`.`productos` (
  `idproducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `unidades_stock` INT NOT NULL,
  `precio_unitario` DECIMAL(20,2) NOT NULL,
  `fecha_alta` Date NOT NULL,
  `descuento` INT NOT NULL,
  PRIMARY KEY (`idProducto`));
  
  CREATE TABLE pedidos (

  id_pedido INT NOT NULL AUTO_INCREMENT,

  id_cliente INT NOT NULL,

  id_producto INT NOT NULL,

  fecha_pedido DATE NOT NULL,

  PRIMARY KEY (id_pedido),

  FOREIGN KEY (id_cliente) REFERENCES clientes(idcliente),

  FOREIGN KEY (id_producto) REFERENCES productos(idproducto),

  CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(idcliente),

  CONSTRAINT fk_pedido_producto FOREIGN KEY (id_producto) REFERENCES productos(idproducto)

);
  


alter TABLE `sys`.`productos` 
  ADD CONSTRAINT  c_descuento check (descuento=5 or descuento=10 or descuento=20 or descuento=50);
  
  insert into clientes(nombre,edad,facturacion) values("Pepe",24,55);
  insert into clientes(nombre,edad,facturacion) values("Juan",99,314);
  
  insert into productos(nombre,unidades_stock,precio_unitario,fecha_alta,descuento) 
  values("Manzanas",5,2.5,"2023-10-10",5);
  insert into productos(nombre,unidades_stock,precio_unitario,fecha_alta,descuento) 
  values("Peras",5,2.5,"2023-08-10",10);
  
  insert into pedidos(id_cliente,id_producto,fecha_pedido) values(1,1,"2023-10-10");
  insert into pedidos(id_cliente,id_producto,fecha_pedido) values(2,2,"2023-10-10");
  
  /*
  select * from pedidos;
  SELECT DATE_FORMAT(fecha_alta, '%d/%m/%Y') as fecha_altaclientes from productos;
  */