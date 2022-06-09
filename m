Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0994C7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 01:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654738259;
	h=To:Subject:From:Message-Id:Date;
	bh=ibGNIqMddingzMATwmwgOIL2NTm1nmK3wWpEsjnNmxA=;
	b=PJWbPMYJFq4RniK9g8JCtC6KcQsBte64wqFPS8b8gUFYDvNMNHa2zBLqZs0p7Vpm
	0tBcSbortmoHl2N/62No1y/zNPmmvtMZd60HUOq+IT+sY5hk2e3G7n5H0sJndt4Wd0W
	AhEk2xohiYjRCi/k7349dDjphUJKZ+oZWOGofQDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654738259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ibGNIqMddingzMATwmwgOIL2NTm1nmK3wWpEsjnNmxA=;
	b=I/BVYEWA/7/EcwgZtm4qBNLFDd9fgcHiHjaEpydifCSXBpGw7zCQbKyQ9iLNshoQ
	qLpm5jiWDziGvxF5WMRxWJvJkiaGj2yvqtVOqxH/nsd0VjdNvl6bAQpXGXIjVtj66lI
	bPUCKe5yQH4qzUFOyz0QTZG+C3B2JlrrYeB1bh9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018146160d44-9b410b81-7b5c-494d-acac-9ca24cb03c71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4f3de0901798db8dbd392f8fbb03f7d8d5157a2284cb6c6685dbba3bb1773e2
Date: Thu, 9 Jun 2022 01:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654738259
