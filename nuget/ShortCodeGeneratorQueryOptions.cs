using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ShortCodeGenerator
{
    /// <summary>
    /// Query options for the Short Code Generator API
    /// </summary>
    public class ShortCodeGeneratorQueryOptions
    {
        /// <summary>
        /// Number of codes to generate (1-100, default: 1)
        /// Example: 5
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Length of each code (4-32, default: 8)
        /// Example: 8
        /// </summary>
        [JsonProperty("length")]
        public string Length { get; set; }

        /// <summary>
        /// Character set: 'alphanumeric', 'alpha', 'numeric', 'hex', or 'base58' (default: alphanumeric)
        /// Example: alphanumeric
        /// </summary>
        [JsonProperty("charset")]
        public string Charset { get; set; }
    }
}
