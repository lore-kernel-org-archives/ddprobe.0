Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C80B1FCD
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 03:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653709319;
	h=To:Subject:From:Message-Id:Date;
	bh=JlW2UWcKzveaH6KF+Bic7x12jjdbWhFpKWKgkf/ezZM=;
	b=iYv2cffKhmgRcIrTznsh1r6z1qaAx/HALiuvm6TggymfErx+C/0zMf+XjH/wkbIQ
	f/65posZJjDrU77Rnl61DvCxFwi+LfPUvH8fMGSYU16n0poHcZX5D1LM+M/yUmLsX9x
	8eWIyoP+rxnkwufQxRjq2rgP/1g9m6JYstOSrkmU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653709319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JlW2UWcKzveaH6KF+Bic7x12jjdbWhFpKWKgkf/ezZM=;
	b=HrRgzgAqFyAGd8zkRF2lAY/fkABm4eDn/94L2SiHXqxiVkNuRqHdcRQqtBXayZ8X
	GrmTVh4eqh6F+w2brMjn3UIUuCKHetxG0xedNs+2+Eqx3sOpwIRvysGJM7Ngyi9Vpck
	U2/+aSh2JP0s0g4QFpxY3ukvHXk4JwjeAJ0RrP0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018108c1ac9b-77839f2f-d2ce-4c4d-8440-f4c31e0db2a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f839c4a10dfcddb5d4d62bf1ee3a1aa5ba27ff82ba608f5a22a75627e6b33735
Date: Sat, 28 May 2022 03:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653709319
