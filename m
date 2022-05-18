Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE111FCE
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 18:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652900279;
	h=To:Subject:From:Message-Id:Date;
	bh=bfreb1o1kHbmCNHQqOeWptocnsGZR8xpS9R1tbOkIJ8=;
	b=SmU2sHz6+Un6sbzgn87iRZvmMJGamp+l890rfeB4P7tNb/KVDRqp6D2z5j+RyBa7
	67OiWGCRvFd5sIrK+ePf9by0Qa+V8q7IsuIk5XZvRSaL7dvLsaSuw5M3i3YtXBGi+0q
	jUDZa0BZOpdP7nFZzn0djZXqGbMvKpiF4gwSYd3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652900279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bfreb1o1kHbmCNHQqOeWptocnsGZR8xpS9R1tbOkIJ8=;
	b=h+DWasgZq3LAZ8qARaBO0VKVnnVrcbEBIX8qQl2VVkZAfyfXBQ1x3wRAythP+AV5
	Z06o62saFzY+i9e4gvkN2h3OQO3SLLUze/exshdGCNpGXX1ZP9uQlIe7myz2JQ6Whn7
	K1eHyIrgz8Kdb1OUwXJzXwiCqbXFc9SR3g4nf1y8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d888b421-2a6fbf1f-2f93-4f52-b05b-07e7de2a60e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57207a4a71c4e12566ebe316411db07866541b16438508b725beb52722215fa7
Date: Wed, 18 May 2022 18:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652900279
