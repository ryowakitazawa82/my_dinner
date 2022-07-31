package com.kity.meshidiary.infrastructure.record

import java.time.LocalDateTime

@Entity(immutable = true)
@Table(name = "recipi")
data class RecipiRecord(

        val id: String,
        val title: String,
        val description: String,
        val price: Int,
        val image_path: String?,
        val createTime: LocalDateTime,
        val updateTime: LocalDateTime,
) {
}