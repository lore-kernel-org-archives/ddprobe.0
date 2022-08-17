Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BC07C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660717852;
	h=To:Subject:From:Message-Id:Date;
	bh=l2Z3LKRYMBl1ehq6Zg6assb6sKsFIPM9xPmsWdBMO70=;
	b=QwpnWIH5ZcMphzPYq1feocxBQhX2MvmIecaecfKyJu4iCPKsL6RbtQoWxw0in1R6
	TMqtk3CpCM+tufvtGDZnWJG6PIdzKZZtfbP/czVukFblRuhg7BoDCqTTPBjXJvHiEP5
	SYm+zY7jxp8YZLSTnS9SWAbixB4bSInht2Hm41sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660717852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l2Z3LKRYMBl1ehq6Zg6assb6sKsFIPM9xPmsWdBMO70=;
	b=ZyqyhWfRbLgMsmV/gClLR1a3UWkkMT+1Rw/MlqadXCmliWLLIf/73lrm1+GaRhtg
	zi+aO6rWKdS7FbQhYK7+TLOXOHjmdkZE/bsJmhJwwMUjtWEmV2IJQHwFP0xYreZWsV7
	9tsxcxpm4KI86lAJE4HN6v2QoF+bC+P6yahqxUYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa7f67ae-abdd34db-3451-4c6c-be92-cc2a2fe9064a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37161937c291064d6a492519192611e1bc1cea1b9827b24d764cb907bc30eafb
Date: Wed, 17 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660717852
