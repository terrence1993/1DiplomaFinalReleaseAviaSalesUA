package com.gmail.zork93.Config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

import static org.hibernate.criterion.Restrictions.and;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    private ShaPasswordEncoder shaPasswordEncoder;

    @Autowired
    public void registerGlobalAuthentication(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(userDetailsService)
                .passwordEncoder(shaPasswordEncoder);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                    .antMatchers("/").hasAnyRole("USER", "ADMIN")
                    .antMatchers("/admin").hasRole("ADMIN")
                    .antMatchers("/tables").hasRole("ADMIN")
                    .antMatchers("/blank").hasRole("ADMIN")
                    .antMatchers("/buttons").hasRole("ADMIN")
                    .antMatchers("/flot").hasRole("ADMIN")
                    .antMatchers("/forms").hasRole("ADMIN")
                    .antMatchers("/grid").hasRole("ADMIN")
                    .antMatchers("/icons").hasRole("ADMIN")
                    .antMatchers("/morris").hasRole("ADMIN")
                    .antMatchers("/notifications").hasRole("ADMIN")
                    .antMatchers("/panels-wells").hasRole("ADMIN")
                    .antMatchers("/typography").hasRole("ADMIN")
                    .antMatchers("/register").permitAll()
                    .antMatchers("/main").permitAll()
                    .antMatchers("/makeorder").hasAnyRole("USER", "ADMIN")
                    .antMatchers("/result").hasAnyRole("USER","ADMIN")
                    .antMatchers("/signup-success").permitAll()
                    .antMatchers("/feedback-success").hasAnyRole("USER", "ADMIN")
                .and()
        .exceptionHandling().accessDeniedPage("/unauthorized")
                .and()
        .formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/j_spring_security_check")
                .failureUrl("/login?error")
                .usernameParameter("j_login")
                .passwordParameter("j_password")
                .permitAll()
                .and()
        .logout()
                .permitAll()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/login?logout")
                .invalidateHttpSession(true);
    }

}
