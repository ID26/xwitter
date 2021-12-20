package ru.denisov26.xwitter.ropositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.denisov26.xwitter.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}
