Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027837B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 08:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654677599;
	h=To:Subject:From:Message-Id:Date;
	bh=5U1lxGm0yCmTgvQ//T//N44nOkHHTuGnB4O1yCjj4IM=;
	b=Y7aWFm+EKhuv/psVDORZn27O7p91HCFvpuctO51CBc1eA/Dlobm5U504Q6WU6kzZ
	O4qLzl8zoA6nvX7ns2xhiHqYTLuD9ijadj94El4gz/InPSSrHOfsBfeJxnB1zOYvv2M
	JSmF3zxtO852KAaIzNXzMJoLqJS0m9rLAgkhMonA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654677599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5U1lxGm0yCmTgvQ//T//N44nOkHHTuGnB4O1yCjj4IM=;
	b=V7SifEZzU1SAjNVswPXiYMy6qSzq27BB2BF75tp/znJPmvDRj+SjB3K6rcXac/Ur
	I/TL+4TjS6dbJOoZYzi8fCy8OxUCHqjaUu2pBs31kl40Pb7GUBQaffbAUzVL6aW7ILS
	h9NetrkE5KthkTQYZsBDTAvYAmW5bWsL4CYbwrBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142787411-9dd2e8cb-f7d9-483f-b2f3-2fcfb7e45514-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b018a9e428ea39caeeedf8eae6ee14f9a449bb9298f15d38f8915ac85bc5d97b
Date: Wed, 8 Jun 2022 08:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654677599
