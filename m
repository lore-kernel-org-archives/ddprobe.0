Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F82136A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 11:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654340459;
	h=To:Subject:From:Message-Id:Date;
	bh=jmQtx0Fy/BftON8YuoILSSKdP5K+OmxnQWLp1yLDQwg=;
	b=lgBsPyXU0hLY0BKAHIxNTdPQQlrFU/2qF9LUg8x7HmzuQtsbnFg9YbtJNDRJFtLF
	NKcz+1T+Ja7r3jR1AV5qoLJmL83mcwpQNSP3fmXuhtoXvNNXyw30v8ne6Dt0uumEyZ+
	RdzQBYGOkr9duhW3yX88mPB234RQHKWB4mlYCn18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654340459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jmQtx0Fy/BftON8YuoILSSKdP5K+OmxnQWLp1yLDQwg=;
	b=TCopnV6XLeHnDcwV0Xd9dg6kZIcL4/yDmehijViI7rLxLRWvSrKUwhlyVXSkmTTo
	JjeLTlw3T0OHJDdPgwm9vSiDbN8FEnXibaDzeHMA1BpEsWdPK3orTU/K6rmN6Sh5mAc
	IfB5UcwAhZuSk7X4VvXzC9yH/axXK8y1gnwyhj8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e601b14-453780cf-9510-4f46-aff3-6c0f05b0733a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7a703663ee54c7d66624dc8cfbd07819cca63155a8f36f746e9bac288415076
Date: Sat, 4 Jun 2022 11:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654340459
