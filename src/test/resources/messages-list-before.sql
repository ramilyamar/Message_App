delete
from message;
delete
from hibernate_sequence;

insert into message (id, text, tag, user_id)
values (1, 'one', 'one', 1),
       (2, 'two', 'two', 1),
       (3, 'three', 'one', 1),
       (4, 'four', 'two', 1);

insert into hibernate_sequence values (10);