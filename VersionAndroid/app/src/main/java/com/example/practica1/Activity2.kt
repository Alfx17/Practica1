package com.example.practica1

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
class Activity2 : AppCompatActivity() {
    companion object{
        const val FragmentTipo = "Fragment_Tipo"
        const val Fragment1 = "Fragment1"
        const val Fragment2 = "Fragment2"
        const val Fragment3 = "Fragment3"
        const val Fragment4 = "Fragment4"
        const val Fragment5 = "Fragment5"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_2)

        val FragmentSel = intent.getStringExtra(FragmentTipo)
        val fragment: Fragment = when(FragmentSel) {
            Fragment1 -> Fragment1()
            Fragment2 -> Fragment2()
            Fragment3 -> Fragment3()
            Fragment4 -> Fragment4()
            Fragment5 -> Fragment5()
            else -> Fragment1() // default por si algo falla

        }

        supportFragmentManager.beginTransaction()
            .replace(R.id.ContenedorFrag, fragment)
            .commit()
    }
}