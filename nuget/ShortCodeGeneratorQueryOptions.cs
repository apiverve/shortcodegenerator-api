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
        /// Number of codes to generate
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Length of each code
        /// </summary>
        [JsonProperty("length")]
        public string Length { get; set; }

        /// <summary>
        /// Character set
        /// </summary>
        [JsonProperty("charset")]
        public string Charset { get; set; }
    }
}
