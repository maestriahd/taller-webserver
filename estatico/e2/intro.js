/////Variables

//String
var nombre = 'María';
//Número
var edad = 25;
//Decimal
var altura = 1.70;
//Fecha
var fecha_nacimiento = new Date('1994-11-15');
//lista
var aficiones = ['nadar', 'ir cine', 'montar bici', 'cocinar'];

//Cantidad de elementos en una lista
console.log(aficiones.length);

//Obtener un elemento de la lista
console.log(aficiones[0]);

/////Iteración

//For loop

for(var i = 0; i < aficiones.length; i++){
  console.log(i);
  console.log(aficiones[i]);
}


//forEach

aficiones.forEach(function(aficion){
  console.log(aficion);
})

//forEach con función flecha

aficiones.forEach(aficion=>{
  console.log(aficion)
});

//si el contenido de la función es de una sola línea
//no se necesitan los corchetes

aficiones.forEach(aficion=>console.log(aficion));

//podemos acceder al índice si pasamos un segundo parámetro a la función

aficiones.forEach((aficion,i)=>console.log(i.toString() + ":" + aficion));

//Objeto

var perfil = {
  'nombre': nombre,
  'edad': edad,
  'altura': altura,
  'fecha_nacimiento': fecha_nacimiento,
  'aficiones': aficiones
}

//accedemos a los elementos del objeto con notación de punto
console.log(perfil.nombre);

//igualmente podemos acceder a los elementos del objeto cuando son arrays
console.log(perfil.aficiones[0]);
