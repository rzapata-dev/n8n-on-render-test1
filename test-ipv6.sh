#!/bin/bash
echo "🔍 Probando conectividad IPv6..."
ping6 -c 3 db.lcjdpyxcxffgwtxqmchh.supabase.co || echo "❌ No hay conexión IPv6"
echo "✅ Script terminado"

