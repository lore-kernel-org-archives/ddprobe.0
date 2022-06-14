Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0671FB0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 17:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655226179;
	h=To:Subject:From:Message-Id:Date;
	bh=J8DL31Vi2/7uzDEgEpSWc5ahXE2Ex9n3kAoqnU+mORU=;
	b=hhcx3zt3GOVkD/+gIPRggpCFvE4BG+DPFw/Y2yT2TDZS22Jkz3OqcYYaimhAXTf9
	jZX60hZ924jLcbpuNj/cGniT9D6som+OhqoVvouHbcjcuJYXCBEl37nCuvm85ynigCQ
	sJKfnm74+elIEU/oXHDjwqmd0EpnCXJQre2/D9m0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655226179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J8DL31Vi2/7uzDEgEpSWc5ahXE2Ex9n3kAoqnU+mORU=;
	b=EhK1CtOX6dyJx+RWfywKT2fCNeTR7us32z1tD5hTFIs12h8I8qPgrb/1M5CVYJyr
	HJzngLmcvAG6ULXqOw5ovlC9oJ5i036DbVjJAy08RXfQKLAWZepseDAUoUFGxVNKtTP
	G0dFt+u8HS/ob6N9vDrmIr1V7uTBPFAaRk8hlIgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181632b1ec4-d1103056-1ced-4b0c-b807-c287107bebf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b78c4dfee28e1cb93b649dedfa348b1fa4848b1a1935ba60de269acbde96c80a
Date: Tue, 14 Jun 2022 17:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655226179
