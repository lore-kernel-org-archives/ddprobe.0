Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C933D9C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659100852;
	h=To:Subject:From:Message-Id:Date;
	bh=RLRI0vZi8ydQBbXRhwJF5WhTqlNtDSDijmc5Tyi0Nwk=;
	b=aNnhZ1sCLq92e8mbQxjjDzPejWEFYdPrKHmil7rNTmZf+LECubvnkn9nnloT4Dac
	RKpEqSykgokAyr045TYWFN3aXeF8iVGTNmQ/x2KCR3tEUYGVrUzk584KY6Oq0w2vDTt
	tbLiLEzIOgaQ0iilP/zOeSBUWKGkDuQHShpuTtAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659100852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RLRI0vZi8ydQBbXRhwJF5WhTqlNtDSDijmc5Tyi0Nwk=;
	b=elHoxMGDVhQ6FPARI1tRhTPy2J7/avpBjHiloDXulNY7JeHV/XzMPgh69D5EpZ3a
	rdbnoXzgVCmtLOqsIHXQ4UvgJDmF1sUyScQ3jiWLIEft6zIbDL0cl+o/g5OIqCKqB9H
	a6zhPz1trkeskdDhdQiTWuoO1mtOMh+TNXYXiZr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a1df134-2fd96ce3-96c7-4705-b622-d66a007bf03f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8aac5e2842d8f635d749161351142bea94af1194e7c7908bfe89ebeae4c1f305
Date: Fri, 29 Jul 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659100852
