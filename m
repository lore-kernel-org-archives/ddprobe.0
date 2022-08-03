Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09F962C
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659518453;
	h=To:Subject:From:Message-Id:Date;
	bh=+xYHdGNzpdOeccMbTCppevHKpdTlCZVC8RPvDvKDWF8=;
	b=dgIqA60B/4/oATHGPTVsfk7SGWCklJiCyb6wMKdRkvXQi3uvHDdtg7YKwMjPoLmf
	LkBW1uS5jMa8OUb0VAYMMqWztsE5iMffDsmz1B5HyfV7O9LS+FCQEuw5Lc1iVQRNo9R
	5aD0fi16f28TSAFpU2ZszKaZxZORnNQpMEwFebbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659518453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+xYHdGNzpdOeccMbTCppevHKpdTlCZVC8RPvDvKDWF8=;
	b=X58IUHp5AMangGJ5ctZ1b/Nzr4WFYqgqM6dZOxBCPZGS0ipcfcqGW/9dkMf2k/SN
	Urte5KXSy88zbNwuQf6tUZPU94u2yD+ZMEuc/mxjrdbbfKUuwB6D0dsLLmXAc9w99wC
	tb7aaLdUrrDR62x1pINkN6JNIEdlMcPb6iywebpI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826302034d-4921f141-9659-44da-8580-0c5d018fcfc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be7141c2db4ba2f01629066d873819ade33c5ab68f688e535a7e693982eac14c
Date: Wed, 3 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659518452
