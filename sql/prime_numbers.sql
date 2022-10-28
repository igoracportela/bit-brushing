# Challenge: https://www.hackerrank.com/challenges/print-prime-numbers/problem
#
# Author: Igor A. C. Portela | Copyright(c) 2022. All rights reserved.
# github: @igoracportela
#

delimiter //
create procedure PrimeNumbers()
begin
    declare is_prime boolean;
    declare max_num int default 1000;
    declare result text default '2';
    declare temp_num int;
    declare current_num int default 3;

    while current_num <= max_num do
        set temp_num = 2;
        set is_prime = true;

        while temp_num <= floor(current_num/2) do
            if current_num % temp_num = 0 then 
                set is_prime = false;
            end if;
            set temp_num = temp_num + 1;
        end while;

        if is_prime then
            set result = concat(result,'&',current_num);
        end if;
        set current_num = current_num + 1;
    end while;
    
    select result;
end//
delimiter ;

call PrimeNumbers();
