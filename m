Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCDF7A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 06:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652595359;
	h=To:Subject:From:Message-Id:Date;
	bh=gLRQPs59rAI9kasQyfZQfHeyHKVT9ILQAQSlKJ6OAMs=;
	b=Uv7Nr3OAALZI6oJbucE3OVIC9uxF5dQ4qPYbbxktMV2S29RqeO0VKBg/wGFWnxIi
	8ur6arZJANwJta1P6aS5At9rNV/ocIIyUAT8ylG9SxpQ1o0J5HdDE60knuFuHdb7B1M
	bTs+1PS41/4ay+gJz7J0vuKQBA1YTfjZMpwN4C0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652595359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gLRQPs59rAI9kasQyfZQfHeyHKVT9ILQAQSlKJ6OAMs=;
	b=G/1frueWcM3u8rKyAm4boXBoebkQewk+5hAOnQrtmwKstbZJC+dLFGtXi91Qfx7/
	czrkWQdmwnGbrLPbp98Dz+OzUupoFoJE9fF1aJ3OPWbO9qG1WTAXQOsS3eBT/Kr2DfU
	3+K+Vxa/EMzznh2Giq+iwGbDyT2HpmGUSmPF31D8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c65bfe63-cbaa37a6-0326-4a4d-b0fd-c186c80e1d61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1742a21ea47e03e58258c5eb96b80b543cdfc8c8bbf72b8527972b0b7935128
Date: Sun, 15 May 2022 06:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652595359
