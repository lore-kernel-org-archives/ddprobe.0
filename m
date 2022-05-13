Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320A27A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 00:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652400959;
	h=To:Subject:From:Message-Id:Date;
	bh=2Apd1xOrF6a1sgm/xaXZ2tSR07IZ5/XE6ZbBAbLlmJs=;
	b=NV1fDdGVkzCJ/VEv70TERxCqAAMyuDB2J0rfSHkHmNX+txPMQe0bg9GeaxOV5q8E
	f/G4SRTTYLrUyNgCEL2PHV30UVL4fuQa7h9bOa5Ib4qzTLUFGUBEub/rT9ZGXGYzOXr
	QflJxjxbAmKxnNIwo6ZOweUWmldSfC7zzIqrQ+qA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652400959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Apd1xOrF6a1sgm/xaXZ2tSR07IZ5/XE6ZbBAbLlmJs=;
	b=alpH1HLf8kpGWltGnv+jpOB6WRJhkrwKNULdVXZfhO8NoVPbpZN1ed+IIFvzAWJY
	j9GdGI1jP0ScnOHYi4Fb9wc3rLWvOGyEKJledoWOJ2vph18P1lsjtYvqqSXG7IZ+zqA
	zDSaKry8VQXT3QkaB3TOABtIWuX9ANbzQi+VDgoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bac5afb1-670ed57c-d2b5-441a-805f-8504be06564e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd47a904a1e6bfbce50cb46aa8d91d9bae6477e06ad3fab4f03cb150be049b16
Date: Fri, 13 May 2022 00:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652400959
