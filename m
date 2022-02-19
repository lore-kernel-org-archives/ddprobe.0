Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D95157DF
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645314385;
	h=To:Subject:From:Message-Id:Date;
	bh=ObiEJmR6BevdGcJIrgbE82ARvPO8DLvf+SKZ8GdjcC8=;
	b=RXloI9ek1JhG1VQxWENVviLsg1AzHK7tCufjKbJXkPCWqnyKl88B0Qqp3MD/e7pq
	d17C8puSn240EBTbosYVJDZgvjuyfZ4Mdxao0tkr+TIj3lyF9nEdWKm4uzTRZlmMn/m
	Voc1HUc9o0dPQUlHLMBNoa2tBDPpk6IW2tdLsH3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645314385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ObiEJmR6BevdGcJIrgbE82ARvPO8DLvf+SKZ8GdjcC8=;
	b=OvNTMOjt8MuS337WmIlQ1Z4FTv5NTR5OkSkusSNuQu8LBLEmX6gdkBZcs3z3kKHQ
	qLhN9N0Tiw+yImhBwTo8/AYLhOctXXvCqxD5dmrXtONjJwiHJ5RNaijEAo70710o9G+
	3iQvCxEwcrz0b2QccR70jHibPu9lyms2XwqNXV4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f146123c7-58af20b7-e411-4745-9684-043d2a70a801-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aba2a86d32eab1aecc3f7cd97182d2cf1e8535512e4a122b0400eace13c21fe3
Date: Sat, 19 Feb 2022 23:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645314384
