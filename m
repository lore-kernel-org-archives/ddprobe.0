Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E7723A5
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659198652;
	h=To:Subject:From:Message-Id:Date;
	bh=Dd2LSKYUCmxGOaQj0vsm3lnGIBRrMstVSFrtR6avsJI=;
	b=PBBBF0MLWkpXa/SQRSJCoudRxeKvUq71sdlJ6mFOwuzNOH5wG3P8LGYuzAMybiqC
	/vETIelAUuqEXcABFIHLNi+4u9JnzlCFrcGBcrgOiT7L0mBpAiu1fA6xES9yoa18t+4
	5YZfV9ny9+G6jhy6vz6Nyfm4Qu9lLg6JVZLaZNq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659198652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dd2LSKYUCmxGOaQj0vsm3lnGIBRrMstVSFrtR6avsJI=;
	b=cVvNrvB+5zpMJYGDEuqbXQ+kKmpSHzzdGfJQSbWOArvu4dbi2MCUP08kQYAMFzZT
	znrZuem8PQQX3nfvJ6WjJYLoLlpZ8XkUvkJR4Qau0NKwDe6d8iGTZ2o2Ctk4TpKel6W
	HDyqX1qgIWmLS13Kkjt/drtt+z+x0hg3rOvRCVaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ff2407b-954ff215-0716-43cb-aa01-892131a36802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b34a89d912567553bb65bfe125ad82fd26659675b3a171decd28dad27a9aaeb5
Date: Sat, 30 Jul 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659198652
