package com.budgettracker;

import jakarta.persistence.*;

@Entity
@Table(name = "users") // Supabase prefers lowercase, no reserved keywords
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;

    @Column(nullable = false, unique = true)
    public String email;

    @Column(nullable = false)
    public String password;
}
