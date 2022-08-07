Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07797A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659858653;
	h=To:Subject:From:Message-Id:Date;
	bh=axO2oc2lxQJQQCWPw/La5hMS0nmhnDcgewDjJTrYwL0=;
	b=d6dGuhj3Qqxqt/pQp8RylOqMib0ZiORsrBO4De+fwubp+GECMLel8fhdaYsuu+Zj
	eX36J0KB4cVyeu48FroDkAQi12Rx5tjm8gaKBoNjtoFwtMDJ6A5XWgOlJGIsI/0fOlX
	Qzhu6FGRr2dzQhtnTz/Eh0mCTuSWTwT9/3sIo0Jo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659858653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=axO2oc2lxQJQQCWPw/La5hMS0nmhnDcgewDjJTrYwL0=;
	b=BIq7dCbXNOIxJqTJVFntaGBfb1f5LiNI0qZXtdYJKIslVKBaGTmXIoOCEd4NB1y4
	1K6514YZC0kre5Py/S5qGgeYSVs8FqeOQV/DK5sPywCjZOBJrk3ockLidJpEMGijCec
	CQygz2CW5eq1He7mFlz3CWRRR4kKRShXoZb4vaUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018277490d8b-b8e60ac6-89b0-46d7-a7da-67e4f8c538ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 798115306044f9be2969a223abcf9dacd60d9da41800d8b62766ed7bb7921dda
Date: Sun, 7 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659858652
