Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405AA2F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 20:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645562185;
	h=To:Subject:From:Message-Id:Date;
	bh=o2PtfNq6HvrqgKAvbGrPInxJaXnrCmaDuT7HiYjQ99E=;
	b=ee59TjW/S5yTm0WFivAIRaDf3noFmRlsQ8wiAlmjO+FiKhtfF6pljxx9O8J2DxBE
	dDpPqvHpmyk9twX01CF0+QN6XD501ifMsN7y/GcQxtI2ZpwvczvZF6BCXgv6K68CdRe
	2jV3kN8nDFgDKKFEGhuYmssOXJAW8M+kt5glJ+TU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645562185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o2PtfNq6HvrqgKAvbGrPInxJaXnrCmaDuT7HiYjQ99E=;
	b=UFAvxeH6WFk4Lei0P6yVu/u+LoC4DioLSt3SQ/WNwrjkOv6m0eq1N/fGn26An7+S
	QwQJExCWNleTehTMqw4CEkYYqJ21MJj0Jhfywx3ibBpSnn6VUS2YrKuuwfXwXUkV3EO
	1pruNZKXUIwP21RIHAE5r9/VjTFfAJe2A52TwVbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2326447a-878b3f5a-222a-40e3-a117-c785c286e3eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0938e05bc9920b5095a5bb02e1f2a51c36372e093379ac355eb7e170b151a5af
Date: Tue, 22 Feb 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645562184
