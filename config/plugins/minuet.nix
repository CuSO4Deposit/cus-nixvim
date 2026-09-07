{
  enable = true;
  settings = {
    provider = "openai_fim_compatible";
    provider_options.openai_fim_compatible = {
      api_key = "NIXVIM_MINUET_DEEPSEEK_API_KEY";
      end_point = "https://api.deepseek.com/beta/completions";
      model = "deepseek-v4-flash";
      name = "Deepseek";
      optional = {
        max_tokens = 256;
        top_p = 0.9;
      };
    };
  };
}
