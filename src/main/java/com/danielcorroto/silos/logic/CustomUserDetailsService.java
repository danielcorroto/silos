package com.danielcorroto.silos.logic;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * Custom service for login authentication
 * 
 * @author Daniel Corroto
 *
 */
public class CustomUserDetailsService implements UserDetailsService {
	/**
	 * Role when login
	 */
	private static final String ROLE = "ROLE_ADMIN";

	private static final String DEFAULT_USER = "admin";
	private static final String DEFAULT_PASS = "nimda";

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		if (DEFAULT_USER.equals(username)) {
			Collection<GrantedAuthority> auths = new ArrayList<GrantedAuthority>();
			auths.add(new SimpleGrantedAuthority(ROLE));
			UserDetails user = new User(username, DEFAULT_PASS, auths);
			return user;
		} else {
			throw new UsernameNotFoundException("User " + username + " not found");
		}
	}

}
