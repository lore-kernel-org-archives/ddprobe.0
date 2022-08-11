Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3914717D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660180852;
	h=To:Subject:From:Message-Id:Date;
	bh=8ChVPNTCbcKLcDz0ylxNCiPIyQNdzLmh5Cyjqf7a86U=;
	b=DNaV46DFlBehN2u/dlPbLwVOByEbz91MokolnRjYhbhxTnGXjlgUXL+9N+TpOuxT
	z7loAa2+JFcUoNrOvk6BYYEIihz/WoajFoUeKu89TMFMbWqZF+B3Kiet254GPQrtEc7
	pR624S+PwiOyGLG/9MCz9a54k/NwgPya0fozzLEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660180852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ChVPNTCbcKLcDz0ylxNCiPIyQNdzLmh5Cyjqf7a86U=;
	b=bJFifZNY+QjiAwrXJcMUp3JI1qaUwuUxg/qLoWS1c6J9gK7NwQBICXJJo7+9d16Y
	vZQo39Iv9vmYHOyxgypg9SsGXVQsKaocwVBVa9/Q7mtUnwDboFcEP/mmJgtw55jdsx7
	hIXGA51+b7ZX0tpq7UD8bHJnuX2S9DVGst4hxPrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828a7d6f4a-e1f96335-d447-42e6-8b52-3896e61b5a55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84fcac42e4ee0ceb8f4055423593cbcaeb44e886d077a13062c65c0583ede422
Date: Thu, 11 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660180852
