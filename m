Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FA07A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658993452;
	h=To:Subject:From:Message-Id:Date;
	bh=nZ//ZesNPbsScNY0fNWhEmstB4UT7pS8jlXur01/kiM=;
	b=Vi7FMAXXcpncatnNCablqpmxcq2wVAB1jeNddV+25Edwgbmi8WcYZp57xOGJjJhj
	+q5go5ljg+is/MsyH9q9M2oBgUJ1DQT1hUuMl3zMlu+sovKA93zwHaz7pCQDab9AFJB
	U7lxSgCBtJz81e/HJ6uwpDUUbuh7R2qXAPVl1rEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658993452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nZ//ZesNPbsScNY0fNWhEmstB4UT7pS8jlXur01/kiM=;
	b=HrTCcmSkpS0ADMhCXWg22MV5UuvaklSKTeb5AehzGdutbuQ31J1WkZFA9dWZE0Nx
	4mPp9VzfcHNBvE7/JuMiwbTSaGC5ZPTbbHHcxIUIlblriupa7hXytUmg/smuTqT+gwb
	qVVzAoRPH9FyGbam7e0mDeolsALs2ubxMTlUgafA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243b72609-f51484cc-d6ba-4999-bdd9-1c3cd75fee3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d055cf82934e9891f412ac58de3d5db57675d96c0e3c3a075133a3a65e3e4c8
Date: Thu, 28 Jul 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658993452
