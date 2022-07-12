Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129FC23A0
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657589212;
	h=To:Subject:From:Message-Id:Date;
	bh=WokTzk59izZo2Aqr7UVKNkSez0dZTabEwEBcLQQFnio=;
	b=cvZ+nOOT8YJYumE9TR4fIu8UjogXh0AlYqEf7MkSNqXZaQHu9IHulIyEfcfMC4oi
	lqfBoY22mQwmrQRrblGEcZstBRcMXMe5fHmkjaSujwp66e/X/47MFMJdWDInM/AMzvV
	zZYudotbjZUXU9Xt9/QXBD5FdiFam63qTEzO2Fmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657589212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WokTzk59izZo2Aqr7UVKNkSez0dZTabEwEBcLQQFnio=;
	b=g/E/J4794PMy5kSh+dqqnp/Ts1Ix1nVhw7QtRxBXVcryKqpKo3jrDZWfTfK7f557
	+uftJJ4ZIkLYi+j+NrtDJLLRLpo9Prc0+btOWwpTHFUWCFWADAiyKJH0bXhDNEaJQjH
	SaOF7YczhAHaRFdp+hdIFhKcxfm/YbM3j9dXs16s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f00424b3-bddca8f5-67aa-4d2f-8305-130235626d28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7453cd4396b0b713b1547a6316bd198e42e8e69701fe167837f54b2de66c282
Date: Tue, 12 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657589212
