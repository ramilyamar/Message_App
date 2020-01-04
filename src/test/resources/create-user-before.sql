delete
from user_role;
delete
from usr;

insert into usr (id, active, password, username)
values (1, true, '$2a$08$d1.VxuscRBukRPU2kVMaR.JOdVmGfwXU3AMqZTIaNlokG3MaUEMIq', 'u'),
       (3, true, '$2a$08$HK3oex8HjjvpRywc7X.33.LkruqUoz/RTPUDzPMflfuDSyD73AZsS', 'u1');

insert into user_role(user_id, roles)
values (1, 'USER'),
       (1, 'ADMIN'),
       (3, 'USER');