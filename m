Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B67D4697
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660930852;
	h=To:Subject:From:Message-Id:Date;
	bh=sCkGGhk6V5v8QBaUygShRSITWPY7Ssvh5cHGOBQJftk=;
	b=STozw5dIglcj4mEQi0Cbc7QyBRZZkzuuKlAhIxCm+ikOpLgc2BjE0APWcqysR320
	9KukuSly91v32GV5TJcVno/ZuEOe2G/t/1j1Qziq3/6TH9buPDJGgWTPJPZjRh64job
	JXw4yuZYwEzrsfQlOeUvRYJB2Jzt+K0aa7r9txR8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660930852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sCkGGhk6V5v8QBaUygShRSITWPY7Ssvh5cHGOBQJftk=;
	b=dfk4WwfbkvkGrrL4gtQ2TjLRm6mZT+9v302MUQCpBUus80Ise819+Z0oq5PlY8Xf
	VwceRhlCMQcltS6weHhpmYW2x4BOw0ucKbXUj07AuE0G7Gqb3I4P0KMqpHCe6bV5I9Z
	hCsPoawELSbJWuXYg4QHsbNfaae3bzkWOAnEfc3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b73186d1-1b7810ab-9313-4a7b-ad71-09c3f97ed413-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 544bd30e36726dd12bb3fac0dfc3bc779425b461776096d6256498dbd7dfb93a
Date: Fri, 19 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660930852
