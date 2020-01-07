package org.example.sweater.repository;

import org.example.sweater.domain.Message;
import org.example.sweater.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepo extends CrudRepository<Message, Long> {
    Page<Message> findAllByOrderByIdDesc(Pageable pageable);

    Page<Message> findByTag(String tag, Pageable pageable);

    Page<Message> findByAuthor(User user, Pageable pageable);
}
