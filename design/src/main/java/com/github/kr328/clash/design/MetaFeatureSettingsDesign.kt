package com.github.kr328.clash.design

import android.content.Context
import android.view.View
import com.github.kr328.clash.core.model.ConfigurationOverride
import com.github.kr328.clash.design.databinding.DesignSettingsMetaFeatureBinding
import com.github.kr328.clash.design.preference.*
import com.github.kr328.clash.design.util.*
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlin.coroutines.resume

class MetaFeatureSettingsDesign(
    context: Context,
    configuration: ConfigurationOverride
) : Design<MetaFeatureSettingsDesign.Request>(context) {
    enum class Request {
        ResetOverride
    }

    private val binding = DesignSettingsMetaFeatureBinding
        .inflate(context.layoutInflater, context.root, false)

    override val root: View
        get() = binding.root

    suspend fun requestResetConfirm(): Boolean {
        return suspendCancellableCoroutine { ctx ->
            val dialog = MaterialAlertDialogBuilder(context)
                .setTitle(R.string.reset_override_settings)
                .setMessage(R.string.reset_override_settings_message)
                .setPositiveButton(R.string.ok) { _, _ -> ctx.resume(true) }
                .setNegativeButton(R.string.cancel) { _, _ -> }
                .show()

            dialog.setOnDismissListener {
                if (!ctx.isCompleted)
                    ctx.resume(false)
            }

            ctx.invokeOnCancellation {
                dialog.dismiss()
            }
        }
    }

    init {
        binding.self = this

        binding.activityBarLayout.applyFrom(context)

        binding.scrollRoot.bindAppBarElevation(binding.activityBarLayout)

        val booleanValues: Array<Boolean?> = arrayOf(
            null,
            true,
            false
        )
        val booleanValuesText: Array<Int> = arrayOf(
            R.string.dont_modify,
            R.string.enabled,
            R.string.disabled
        )

        val screen = preferenceScreen(context) {
            category(R.string.settings)

            selectableList(
                value = configuration::unifiedDelay,
                values = booleanValues,
                valuesText = booleanValuesText,
                title = R.string.unified_delay,
            )

            selectableList(
                value = configuration::geodataMode,
                values = booleanValues,
                valuesText = booleanValuesText,
                title = R.string.geodata_mode,
            )

            selectableList(
                value = configuration::tcpConcurrent,
                values = booleanValues,
                valuesText = booleanValuesText,
                title = R.string.tcp_concurrent,
            )

            selectableList(
                value = configuration::enableProcess,
                values = booleanValues,
                valuesText = booleanValuesText,
                title = R.string.enable_process,
            )

            category(R.string.dns)

            val dnsDependencies: MutableList<Preference> = mutableListOf()

            val dns = selectableList(
                value = configuration.dns::enable,
                values = arrayOf(
                    null,
                    true,
                    false
                ),
                valuesText = arrayOf(
                    R.string.dont_modify,
                    R.string.force_enable,
                    R.string.use_built_in,
                ),
                title = R.string.strategy
            ) {
                listener = OnChangedListener {
                    if (configuration.dns.enable == false) {
                        dnsDependencies.forEach {
                            it.enabled = false
                        }
                    } else {
                        dnsDependencies.forEach {
                            it.enabled = true
                        }
                    }
                }
            }

            selectableList(
                value = configuration.dns::preferH3,
                values = booleanValues,
                valuesText = booleanValuesText,
                title = R.string.prefer_h3,
                configure = dnsDependencies::add,
            )

            dns.listener?.onChanged()

            category(R.string.sniffer_setting)

            val snifferDependencies: MutableList<Preference> = mutableListOf()

            val sniffer = selectableList(
                value = configuration.sniffer::enable,
                values = arrayOf(
                    null,
                    true,
                    false
                ),
                valuesText = arrayOf(
                    R.string.sniffer_config,
                    R.string.sniffer_override,
                    R.string.disable_sniffer,
                ),
                title = R.string.strategy
            ) {
                listener = OnChangedListener {
                    if (configuration.sniffer.enable == false) {
                        snifferDependencies.forEach {
                            it.enabled = false
                        }
                    } else {
                        snifferDependencies.forEach {
                            it.enabled = true
                        }
                    }
                }
            }

            editableTextList(
                value = configuration.sniffer::sniffing,
                adapter = TextAdapter.String,
                title = R.string.sniffing,
                placeholder = R.string.dont_modify,
                configure = snifferDependencies::add,
            )

            editableTextList(
                value = configuration.sniffer::forceDomain,
                adapter = TextAdapter.String,
                title = R.string.force_domain,
                placeholder = R.string.dont_modify,
                configure = snifferDependencies::add,
            )

            editableTextList(
                value = configuration.sniffer::skipDomain,
                adapter = TextAdapter.String,
                title = R.string.skip_domain,
                placeholder = R.string.dont_modify,
                configure = snifferDependencies::add,
            )

            editableTextList(
                value = configuration.sniffer::portWhitelist,
                adapter = TextAdapter.String,
                title = R.string.port_whitelist,
                placeholder = R.string.dont_modify,
                configure = snifferDependencies::add,
            )

            sniffer.listener?.onChanged()
/*
            category(R.string.geox_url_setting)

            val geoxurlDependencies: MutableList<Preference> = mutableListOf()

            editableText(
                value = configuration.geoxurl::geoip,
                adapter = NullableTextAdapter.String,
                title = R.string.geox_geoip,
                placeholder = R.string.dont_modify,
                empty = R.string.geoip_url,
                configure = geoxurlDependencies::add,
            )

            editableText(
                value = configuration.geoxurl::mmdb,
                adapter = NullableTextAdapter.String,
                title = R.string.geox_mmdb,
                placeholder = R.string.dont_modify,
                empty = R.string.mmdb_url,
                configure = geoxurlDependencies::add,
            )

            editableText(
                value = configuration.geoxurl::geosite,
                adapter = NullableTextAdapter.String,
                title = R.string.geox_geosite,
                placeholder = R.string.dont_modify,
                empty = R.string.geosite_url,
                configure = geoxurlDependencies::add,
            )
*/
        }

        binding.content.addView(screen.root)
    }

    fun requestClear() {
        requests.trySend(Request.ResetOverride)
    }
}
