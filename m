Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CB2362
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656374812;
	h=To:Subject:From:Message-Id:Date;
	bh=u51UztorE4AmqbQ/OpOqnSsg+TLF5RFfA1YD4U6tDwM=;
	b=ForkaQ9w+x7N1o1nN3D4uc/46g30DUmpUGksUZC9C68L0OhzXRSTjj9MQcgAOG/P
	R2S8Kava7iJoQMfx3wZjHxL0fsULMk50aEQ1Z9xiDBFlR2t7cJspcm1WLOxm7s1wALv
	K72AC+5mBXbObXdaoTV7WZHHx36Eit/Vhr2a1Cz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656374812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u51UztorE4AmqbQ/OpOqnSsg+TLF5RFfA1YD4U6tDwM=;
	b=O1oasbytyYRBgN9CjAQRVoADUarYmHx5L/YdNJzDWxvykp8WXfJddWupFhDbHvSe
	jNloQuzli5Q4OVBXmJPPco7lU615CDyN6ZBFSafQQs4rei3I93BMdrQ5MNDOgo0YUek
	q0wf3NIz/qDi6TRJgCefuFXBqK479EgYfWIDUfR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7a1de84-8c10f3ba-dfe3-4208-8037-4b9d3770cb45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8af03ba9ec6c89ed5d9a9feb52c9bf3530c56788d6b4ca2606959d154180487
Date: Tue, 28 Jun 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656374812
