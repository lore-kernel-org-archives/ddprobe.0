Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117293D99
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656878212;
	h=To:Subject:From:Message-Id:Date;
	bh=TN2FFbmDXYua9pLBBZUJ7E+eN5nQgYAeryxvtRKXPHA=;
	b=VIpaFGD+5T5Hi1jHRWEWYGKyK7cdxmKp3IcacX8hxnM4YW5aQKvbNiPsI/FOhOUA
	QgRvyk6rAev23/lATxk2ivzC9y7KmxQLaVx2kcA0ZAMBfX8eaXhuHUlpDVUUjrm7S1k
	AO1dJLp0z2nRFNP+T233DoAbvZaSs+raywbLIztU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656878212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TN2FFbmDXYua9pLBBZUJ7E+eN5nQgYAeryxvtRKXPHA=;
	b=LCS1gUQER4I+kI7qOFYNRVIs7QdNcevz3ftMalIrLzRvl0rUke0U80dgEWuCIfY7
	SqgOV+cRxWWWpNttQMplB8dj6ueFhkEve+neHyVw3pZggF+mWmitrgnzBVlEWh5wL6S
	tbiWt+xRB2lH4IcqodRZJDIi3ggFMPc1xjPpH+WA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5a324d3-e8cc0960-1cc7-4477-9355-750e1a198f65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0dc83423df1db8764673a550a4c8fec10727544a69088861d58df1f92e14cd3
Date: Sun, 3 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656878212
