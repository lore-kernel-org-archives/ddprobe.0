Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596B54434
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660836652;
	h=To:Subject:From:Message-Id:Date;
	bh=UsEfqmsCu5l7Nr5MxXM3LXIlOqOLEWvmT0O0fH1kGrI=;
	b=JCFnHEO75qrmIBtwVDzJvG6WAVCQ/vnOTNWQRts1UnK0V7vfarUJon3VcnQN67SD
	ZkV6FWymZ+XHycys1RyBK4euecRJA8NV9BQ6dLfDiIs4oCSlbfU2CwgyrNLsEDON1WO
	b6+KTaTxE5R4IebGJcc2lBR0/eNErFx00EcxTf/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660836652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UsEfqmsCu5l7Nr5MxXM3LXIlOqOLEWvmT0O0fH1kGrI=;
	b=RHoxx1FERB4NYxSuDJD95RXAPqunnasnO5o96MEo7gNXaic+O/CbBMjS5BUDu5Mo
	DbpmNUQxp/Rwfqlay0utiREe9+PDn+4h0WboHMnH8k7VV6fOWvLdVOqT1vj3qscOWP8
	Y9aKoC+DanF77ZiIwLCu8vzn5td87ehy0Tw7biaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b1942613-a6ba1e44-613f-4b99-aebd-aa3de9ea8868-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 897372ecd19061758d2024b6285a9606cd3639f6fd8b29af395618b5dac17e2a
Date: Thu, 18 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660836652
