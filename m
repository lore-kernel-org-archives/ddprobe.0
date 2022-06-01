Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6412592
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 20:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654116899;
	h=To:Subject:From:Message-Id:Date;
	bh=IcL1rASXUeWLV2/4hImnnGCgRfUngJehr49O30rYDGg=;
	b=FLHfAQgczcK70O4cHwyi+l7JpNq4wVut2OoSUiNbgGjrC8vaToCV1en/ASiqIdGL
	jPF+hlf6lXouTXbSUW9hCiPAxTEdgZRNe4SqPZfO5J/7eRqgZE9MVNNmf+VvYzsNbFJ
	cpDYcO3qSs7IMUw1FUwC2kD9/imllm5muZZ0IFhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654116899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IcL1rASXUeWLV2/4hImnnGCgRfUngJehr49O30rYDGg=;
	b=Bl1/8y+QLHJDY3nWnRMCpxsldEkx2EK0N7ZSzvTFEuDEiFIHuII14i2kkpkb8iXv
	idym/ThTShz9l2TDkN8Rhz2jYkX4/TsCq63hUKqnkpzFPum3WAA/K6gLuWBxXStn3fE
	x0BcgSUY0HucHRlmSBMYjlkIsH0Qo6LNeounZABY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181210cd9d8-15b8ab2c-87bc-424c-a8db-b6e0a20eb85b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4803867eab732a7d0f31d5996bc0d60b53ab06f8a390b5ea3ac6096cc8f4fad6
Date: Wed, 1 Jun 2022 20:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654116899
