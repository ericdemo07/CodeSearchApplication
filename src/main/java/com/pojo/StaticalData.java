package com.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

public @Data class StaticalData {
	@JsonProperty("top-5-languages-used")
	String top5lang;
	@JsonProperty("top-2-submissions-attempted")
	String top2sub;
	@JsonProperty("submission-per-level")
	String subperlvl;
	@JsonProperty("total-submissions")
	String totalsub;
}
