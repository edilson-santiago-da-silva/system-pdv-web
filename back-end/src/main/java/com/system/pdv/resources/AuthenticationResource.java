package com.system.pdv.resources;

import com.system.pdv.config.security.TokenService;
import com.system.pdv.entities.UserSys;
import com.system.pdv.repositores.UserSysRepository;
import com.system.pdv.user.Authentication;
import com.system.pdv.user.LoginResponse;
import com.system.pdv.user.Register;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
public class AuthenticationResource {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private UserSysRepository repository;
    @Autowired
    private TokenService tokenService;

    @PostMapping("/login")
    public ResponseEntity login(@RequestBody @Valid Authentication data){
        var usernamePassword = new UsernamePasswordAuthenticationToken(data.email(), data.password());
        var auth = this.authenticationManager.authenticate(usernamePassword);

        var token = tokenService.generateToken((UserSys) auth.getPrincipal());

        return  ResponseEntity.ok(new LoginResponse(token));
    }

    @PostMapping("/register")
    public ResponseEntity register(@RequestBody @Valid Register data){
        if(this.repository.findByEmail(data.email()) != null) return ResponseEntity.badRequest().build();

        String encryptePassword = new BCryptPasswordEncoder().encode(data.password());
        UserSys newUser = new UserSys(null, data.email(), encryptePassword, data.role());

        this.repository.save(newUser);

        return ResponseEntity.ok().build();

    }
}
