Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A737C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 12:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654605239;
	h=To:Subject:From:Message-Id:Date;
	bh=or31MMHrCPP7SOG859E/MpXM6MxjgJ63l2Rti5ccX9g=;
	b=AhlqrrLL1wj5HK/G2T6seAFgY4qe6dGghVIMVqXqQZ/yiD5h/JV6r9X+x6G7gGwK
	qh4WF8dhcDlXHLYOPyOfgCFPNv3ibSq6KR2vCMJ6R4f4QdJBWZBZuGsDJt36BbhItzu
	o6bEjA6n0PfXvqDzgzXq7CxQZbtACymz21yP61EI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654605239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=or31MMHrCPP7SOG859E/MpXM6MxjgJ63l2Rti5ccX9g=;
	b=eID7nk2gGZKwdwTsrI1EYMcDNb2ythFuxhWTwiT4AyujD6JKKQLDnCCdWvBHEI+y
	DpyfF72GawRqAh2ESIW0r1tQJWNj46M3mS0ynDU5G/ZAEibU8GyF/J4z3sNuPNxcLIb
	q/Skxfg0JOcmRa4YFpATlM7mYdag+lt4QyKpN/ZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e285467-70f0ac6c-1736-4d5b-b791-f33a06bff45e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71b177ff4938b6f15279c7b55439dc0da3e99d8e22ce0abd51b79e8fe9f84475
Date: Tue, 7 Jun 2022 12:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654605239
