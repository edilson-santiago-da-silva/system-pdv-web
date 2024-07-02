package com.system.pdv.repositores;

import org.springframework.data.jpa.repository.JpaRepository;

import com.system.pdv.entities.UserSys;
import org.springframework.security.core.userdetails.UserDetails;

public interface UserSysRepository extends JpaRepository<UserSys, Integer> {

    UserDetails findByEmail(String email);
}
