Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A967F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659393053;
	h=To:Subject:From:Message-Id:Date;
	bh=+pfnfrMpesCU3E3F6u2Bf0uh6gBxD4kHGeX+YINLIbc=;
	b=k2xiL/ePAl1qlNiZTddWteQai9KSJyBblJum5X7U+OyUSYyjeyduKb3O9k4/21Sn
	rID9DO/3Y9UNiFH1s3GYXs3cr+9qKy4/7AZq45AA25h1Qf2ZVpUfaC7ceJP8NepEJa+
	N35KawR0spqfkYm1CBPc5MHXAsgh/KbMpxzvCoyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659393053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+pfnfrMpesCU3E3F6u2Bf0uh6gBxD4kHGeX+YINLIbc=;
	b=LUFcRYV5xKvNEJoFD9sN3J+B+zkAlvKwsJXyLlJ6I+CN1Q4RqZzGSDgWSwpBeEOp
	rArWCq5D512HW6evcocJcq1A8ukmTWki96p6HGgGPlp5WyI+XYdyXNyYnysmm7oAisX
	Zj+vZF/wYW02/yBrl9mFg4N/LqjsDCeBgTnYRcdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b888f6f-910497d3-b81c-4772-b803-8f34110ace26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f516b0611353748dbeb52e27405f14da25565ce9378be402da4b8467753f82c1
Date: Mon, 1 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659393052
