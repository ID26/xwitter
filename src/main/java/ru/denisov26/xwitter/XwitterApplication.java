package ru.denisov26.xwitter;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import ru.denisov26.xwitter.domain.Role;
import ru.denisov26.xwitter.domain.User;
import ru.denisov26.xwitter.ropositories.UserRepository;

import java.util.HashSet;
import java.util.Set;

@SpringBootApplication
@RequiredArgsConstructor(onConstructor = @__(@Autowired))
public class XwitterApplication implements CommandLineRunner {

	private final UserRepository userRepository;

	public static void main(String[] args) {
		SpringApplication.run(XwitterApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
//		Set<Role> roles = new HashSet<>();
//		roles.add(Role.USER);
//		roles.add(Role.ADMIN);
//		User admin = new User("admin", "1", true, roles);
//		userRepository.save(admin);
	}
}
