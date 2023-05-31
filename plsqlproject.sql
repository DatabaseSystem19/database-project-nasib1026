SET SERVEROUTPUT ON

DECLARE
  max_p_take PROTEIN.P_take%type;
  age1 NEED.age%type;
  qua NEED.W_need%type;
BEGIN
  SELECT MAX(P_take) INTO max_p_take FROM PROTEIN;
  DBMS_OUTPUT.PUT_LINE('The maximum needed PROTEIN is: ' || max_p_take);

  SELECT age, W_need INTO age1, qua FROM NEED WHERE rownum = 1;

  IF age1 < 18 AND qua < 2.1 THEN
    DBMS_OUTPUT.PUT_LINE('Enough Quantity');
  ELSIF age1 > 18 AND qua = 2.1 THEN
    DBMS_OUTPUT.PUT_LINE('Enough Quantity');
  ELSE
    DBMS_OUTPUT.PUT_LINE('NOT Enough Quantity');
  END IF;
END;
/

DECLARE
  CURSOR new_cur IS SELECT name, age FROM USERS;
  new_record new_cur%ROWTYPE;
BEGIN
  OPEN new_cur;
  LOOP
    FETCH new_cur INTO new_record;
    EXIT WHEN new_cur%NOTFOUND OR new_cur%ROWCOUNT > 3;
    DBMS_OUTPUT.PUT_LINE('Name: ' || new_record.name || ', Age: ' || new_record.age);
  END LOOP;
  CLOSE new_cur;
END;
/

DECLARE
  counter NUMBER;
  person_name2 users.name%TYPE;
  TYPE person_names IS VARRAY(5) OF users.name%TYPE; 
  A_NAME person_names := person_names();
BEGIN
  counter := 1;
  FOR x IN 205..209 LOOP
    SELECT name INTO person_name2 FROM users WHERE id = x;
    A_NAME.EXTEND();
    A_NAME(counter) := person_name2;
    counter := counter + 1;
  END LOOP;
  
  counter := 1;
  WHILE counter <= A_NAME.COUNT LOOP 
    DBMS_OUTPUT.PUT_LINE(A_NAME(counter));
    counter := counter + 1;
  END LOOP;
END;
/

-- Generating function
CREATE OR REPLACE FUNCTION avg_age_func RETURN NUMBER IS
  avg_age USERS.age%type;
BEGIN
  SELECT AVG(age) INTO avg_age FROM USERS;
  RETURN avg_age;
END;
/

-- Function calling
BEGIN
  dbms_output.put_line('Average AGE of USERS: ' || avg_age_func );
END;
/

