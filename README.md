# Usando el control de validación CompareValidator ASP .NET - parte II

Como un complemento al primer ejercicio del control ASP .NET CompareValidator, aqui presento un segundo ejemplo que muestra como utilizar el control CompareValidator para comparar el valor de un control ASP.NET con un tipo específico de dato .NET (Currency, Date, Double, Integer, String) o bien comparar si teniendo dos valores: uno es menor o mayor al otro o si ambos valores son iguales.

Este segundo ejemplo consta de dos archivos: CompareValidatorSample2.aspx y CompareValidatorApp2.aspx.cs

Puedes descargar el código fuente aquí.

Fig 1 El ejemplo muestra la comparación de un valor contra un tipo específico de dato y la comparación del valor de un control contra el valor de otro control.



Fig 2 Comparando el valor de un control con un tipo específico de dato .NET.



Fig 3 Comparando el valor de un control contra el valor de otro control.



Algunas propiedades esenciales del control CompareValidator.

ControltoValidate: El control de donde obtendremos el valor a comparar
ControlToCompare: El control con el cual se compara el valor obtenido de la propiedad ControltoValidate
Display: Esta propiedad tiene 3 valores:
Static: es la propiedad predeterminada, reserva un espacio suficiente en la página para mostrar el mensaje de error.
Dynamic: el espacio para mostrar el mensaje no se reserva, cuando el mensaje se despliega se desplaza el contenido existente en la página.
None: el mensaje no será desplegado en el lugar del control sino en el control ValidatorSummary si se localiza en la misma página.
Errormessage: el texto del mensaje que se desplegará si no se cumplen las condiciones.
Operator: La operación que efectuará el control en los valores de los campos, los valores son los siguientes:
LessThan:El valor del ControlToValidate debe ser menor al valor del ControlToCompare.
Equal: El valor del ControlToValidate debe ser igual al valor del ControlToCompare.
NotEqual: El valor del ControlToValidate no debe ser igual al valor del ControlToCompare.
LessThanEqual: El valor del ControlToValidate debe ser menor o igual al valor del ControlToCompare.
GreaterThan: El valor del ControlToValidate debe ser mayor al valor del ControlToCompare.
GreaterThanEqual: El valor del ControlToValidate debe ser mayor o igual al valor del ControlToCompare.
Type: El tipo de datos de los valores a comparar, los tipos de datos disponibles para este control son:
Currency: Moneda
Date: Fecha
Double: Valor de punto flotante
Integer: Entero sin punto decimal
String: Cadena
