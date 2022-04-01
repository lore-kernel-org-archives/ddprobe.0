Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5BB802
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 01:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648775218;
	h=To:Subject:From:Message-Id:Date;
	bh=f0WKp7wooiqX4OOn31XcSIYS2/3nfcziq5he2ilWtTU=;
	b=LSogXpLTZSbIwqAnFSXsP2pGLMzYBcH3Q5sbHYAfyBslxzpfRrZaURn2GUEUQBvM
	xsUpQXeTt2lPsLsWTtyPaluB3NDTbQn483QlXIkTr/4WUSvkfP9PV9HrtNCccMZOEW/
	b+GB3HYXaX0J0lGYMXL2WkaZEK7iLTDVZ1QKJryE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648775218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f0WKp7wooiqX4OOn31XcSIYS2/3nfcziq5he2ilWtTU=;
	b=PRsdeHF5QwMRMLr6OnHx9odKHZzmMw6DWoZe1N6p9b17ofpQB3naMTdITMYIOjqH
	t7YnnKf08toCnK86tPfcNx2EcZme55Xt2w7I3AJgZW4F1bSjkrkwGw+NzS6h4tj4DDN
	w8WQx157GS5WL/z6x7cDQ/o9YiNVkA2VkNmmlhXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe2a9444a-5d4a2bd2-001a-4854-988f-b9de916ba337-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b60cc7fd4a60b4557e0ef7cefc864fd9cdf93160f40b9b86346d9721ecbe893
Date: Fri, 1 Apr 2022 01:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648775218
