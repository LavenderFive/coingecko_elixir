defmodule Coingecko do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.coingecko.com/api/v3/"
  plug Tesla.Middleware.Headers, [{"authorization", "token xyz"}]
  plug Tesla.Middleware.JSON

  # ---------- ping ----------
  def ping do
    get("/ping/")
  end

  # ---------- simple ----------
  def simple_price(ids, vs_currencies) do
    get("/simple/price", query: [])
  end

  # Example params: {include_market_cap: "false", include_24hr_vol: "false", include_24hr_change: "true", include_last_updated_at: "true}
  def simple_token_price(id, contract_addresses, vs_currencies, params) do
    get("/simple/token_price/#{id}", query: [contract_addresses: contract_addresses, vs_currencies: vs_currencies, ])
  end

  def simple_supported_vs_currencies() do
    get("/simple/supported_vs_currencies")
  end
  # ---------- coins ----------
  def list() do
    get("/coins/list")
  end
  # ---------- contract ----------

  # ---------- asset_platforms ----------

  # ---------- categories ----------

  # ---------- indexes ----------

  # ---------- derivatives ----------

  # ---------- exchange_rates ----------

  # ---------- search ----------

  # ---------- trending ----------

  # ---------- global ----------

  # ---------- companies ----------

end
