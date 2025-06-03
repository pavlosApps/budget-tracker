package com.budgettracker;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "transactions")
public class Transaction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;

    @Column(nullable = false)
    public String type;

    @Column(nullable = false)
    public String category;

    @Column(nullable = false)
    public Double amount;

    @Column(nullable = false)
    public LocalDate date;

    public String note;

    @ManyToOne
    @JoinColumn(name = "user_id")
    public User user;
}
