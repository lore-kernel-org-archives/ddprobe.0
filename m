Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94FE1627
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 03:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654140059;
	h=To:Subject:From:Message-Id:Date;
	bh=TRBPAuWWfK9tYY9epnBv+nwIIwpZ8bOejQDYHpr3kKI=;
	b=bBSNQNSKEDPgqAEB4N+Wra6B5NFvOaWTm0vVkhpkZOAeE8ub4w0P5ptQ+LnxRm47
	HRe4eT0NowpemACBozd2E+83zHe1yiHFj0phWdvR66/TyCfwMwsaw8fv5Ox7fQ9TcBw
	xErPa5pdJ4KgX6bmZMQvOZSm8dz+RUVCwBJONTlw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654140059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TRBPAuWWfK9tYY9epnBv+nwIIwpZ8bOejQDYHpr3kKI=;
	b=WERRyO/o2UdiOXhNeAskE11xeA91viVQ1L44x5xsNUOZtLKXswr7w+Zmje0PSaVB
	GeHAThxkokkKHacx76IhMOE4EHp0w+42Yi4q6877DZjM+Sj8AiW1OdGUQE7d+RdB6tJ
	Hb+LkP+QULtJWo9Ce0Hfd2rbpEtz1QCR0Cglgbzc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181226e3e61-3741f3d5-3491-42e6-baf6-f2bfb4c67621-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dec4c3961e8c17326a59189a6f50036a706085cec7ca85d18ccccdbb2a236dc
Date: Thu, 2 Jun 2022 03:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654140059
