Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683977A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657271812;
	h=To:Subject:From:Message-Id:Date;
	bh=X2d5IkvbmMEseTDP3x0HffX30ZbBGl6G2QBBgEO6I3w=;
	b=AztyMCorO7zUlbsmQ3BQEo28zgtlC5c/T+8ScAYVKfpPfVgEDzkx4cO9woV87oem
	0g6K2sEHpQnVmlPEZ+v4p3jmsKAwTkZNJFWSIuTzTEbyWeTsL+3AI+rIAyRv/p26LFJ
	SnOHRBxcYxRQNemxutXbivnrGFNMYprGAczHN7Xc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657271812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X2d5IkvbmMEseTDP3x0HffX30ZbBGl6G2QBBgEO6I3w=;
	b=jU01mPYo9xHnlvCDq0YL+EzbuLv1/wsQF4WtmoReYO5PS/FWgqOTCB7+Nh3Sf7ny
	ZhfGFZN3RUVzGC2Y7Xmx04zWBm1D5zPOH/kJqEuoUnwTl2BKZ69okyhLExypy7AITYa
	Kc64sPmimTX9TBZOgpCpKCHsEB6SqT19VZ0mFLIM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd1900aa-ce43c5c5-8b77-4dcf-b524-da2ef422e94c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cc6221a947c145333befb1953394fe8dbbb73f067c446c20d8865422b73be4c
Date: Fri, 8 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657271812
