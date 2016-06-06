package com.pojo;

import lombok.Data;

public @Data class Submissions {
	private String submission_id;
	private String title;
	private String metadata;
	private String source;
	private String status;
	private String language;
}
