Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29129320E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 21:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654637459;
	h=To:Subject:From:Message-Id:Date;
	bh=1aHmX1gMx/nFZjzA6M8NUDTIk4MLfLnd5oOPZnln3Ac=;
	b=cHefd/wkOff8TpeNxL5Mc/VEt8EFi9P8eWVRXa4Rz+AUzyz2IDdhkOQ0KpgsmKTk
	ViTSNpKQ85pe5f5rQSe86Q6aRd9s6o+LygocvL6dnTdTIpY0WIiSWKKXOT1S9bhENni
	oKsxP0yT6A8ppRDW+BuGA6AvUuJ3sK+B+IRVvthU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654637459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1aHmX1gMx/nFZjzA6M8NUDTIk4MLfLnd5oOPZnln3Ac=;
	b=almTGX2mZmcuq7oYi61Juz/QNQqfOftNZpYqlsJURoiJZjUIJjPhryPsqp4J0juU
	/cehSnwU/I436ViCQ8pUHwCFAL5xfbWb45rwV6N+CXkDtIH0eHhQc5eyXuGGZLfowwU
	VaHJsGEtqTodriVELHqVYQrREcuTLjJHqbsgyOjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814013f741-d818e259-937f-4991-b643-e9faffd660a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f6fbf9be3736e3dd0ea8608c0cc6ff16fe50c73bfebc90b600d53d3f733467c
Date: Tue, 7 Jun 2022 21:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654637459
