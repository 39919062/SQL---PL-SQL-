DECLARE
    -- Variables generales
    v_nombre        VARCHAR2(20);
    v_apellido      VARCHAR2(25);
    v_id            NUMBER;
    v_sueldo        NUMBER;
    v_bonificacion  NUMBER;
    v_email         VARCHAR2(25);
    v_telefono      VARCHAR2(20);
    v_id_dep        NUMBER;
    v_nombre_dep    VARCHAR2(30);
BEGIN
    ------------------------------------------------------------------
    -- EJERCICIO 1: Bonificación 40% - Empleado 100
    ------------------------------------------------------------------
    SELECT FIRST_NAME, LAST_NAME, EMPLOYEE_ID, SALARY, SALARY * 0.4
    INTO v_nombre, v_apellido, v_id, v_sueldo, v_bonificacion
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 100;

    dbms_output.put_line('----------------------------------------------');
    dbms_output.put_line('BONIFICACIÓN 40% - EMPLEADO 100');
    dbms_output.put_line('Nombre: ' || v_nombre || ' ' || v_apellido);
    dbms_output.put_line('ID: ' || v_id);
    dbms_output.put_line('Sueldo: ' || v_sueldo);
    dbms_output.put_line('Bonificación: ' || v_bonificacion);

    ------------------------------------------------------------------
    -- EJERCICIO 2: Bonificación 40% - Empleado 162
    ------------------------------------------------------------------
    SELECT FIRST_NAME, LAST_NAME, EMPLOYEE_ID, SALARY, SALARY * 0.4
    INTO v_nombre, v_apellido, v_id, v_sueldo, v_bonificacion
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 162;

    dbms_output.put_line('----------------------------------------------');
    dbms_output.put_line('BONIFICACIÓN 40% - EMPLEADO 162');
    dbms_output.put_line('Nombre: ' || v_nombre || ' ' || v_apellido);
    dbms_output.put_line('ID: ' || v_id);
    dbms_output.put_line('Sueldo: ' || v_sueldo);
    dbms_output.put_line('Bonificación: ' || v_bonificacion);

    ------------------------------------------------------------------
    -- EJERCICIO 3: Empleado + Departamento (Empleado 100)
    ------------------------------------------------------------------
    SELECT e.FIRST_NAME, e.LAST_NAME, e.EMPLOYEE_ID,
           e.SALARY, d.DEPARTMENT_ID
    INTO v_nombre, v_apellido, v_id, v_sueldo, v_id_dep
    FROM EMPLOYEES e
    JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
    WHERE e.EMPLOYEE_ID = 100;

    dbms_output.put_line('----------------------------------------------');
    dbms_output.put_line('EMPLEADO Y DEPARTAMENTO - EMPLEADO 100');
    dbms_output.put_line('Nombre: ' || v_nombre || ' ' || v_apellido);
    dbms_output.put_line('ID Empleado: ' || v_id);
    dbms_output.put_line('Sueldo: ' || v_sueldo);
    dbms_output.put_line('ID Departamento: ' || v_id_dep);

    ------------------------------------------------------------------
    -- EJERCICIO 4: Datos completos + Bonificación 60% (Empleado 103)
    ------------------------------------------------------------------
    SELECT e.FIRST_NAME, e.LAST_NAME, e.EMAIL, e.PHONE_NUMBER,
           e.SALARY, e.SALARY * 0.6,
           d.DEPARTMENT_ID, d.DEPARTMENT_NAME
    INTO v_nombre, v_apellido, v_email, v_telefono,
         v_sueldo, v_bonificacion, v_id_dep, v_nombre_dep
    FROM EMPLOYEES e
    JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
    WHERE e.EMPLOYEE_ID = 103;

    dbms_output.put_line('----------------------------------------------');
    dbms_output.put_line('DATOS COMPLETOS - EMPLEADO 103');
    dbms_output.put_line('Nombre: ' || v_nombre || ' ' || v_apellido);
    dbms_output.put_line('Email: ' || v_email);
    dbms_output.put_line('Telefono: ' || v_telefono);
    dbms_output.put_line('Sueldo: $' || v_sueldo);
    dbms_output.put_line('Bonificación 60%: $' || v_bonificacion);
    dbms_output.put_line('ID Departamento: ' || v_id_dep);
    dbms_output.put_line('Departamento: ' || v_nombre_dep);

END;
/
