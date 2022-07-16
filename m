Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0998E367
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657934812;
	h=To:Subject:From:Message-Id:Date;
	bh=rCF9AjlVrIQoet7RNEnLMoEg/e/Lu7sAdP+NiGwfTdY=;
	b=aGyDP2LyS+3pAhNvnamZyl5bzSXUoJg3g8f8fvgviMvCTe1dZmCLYJG+uU4rGgQ2
	RBHkyroGNqnoTRO5vElOSucyynwQvuQs5R1dT1ecv+eM8wJAvcpLOtIPgipDShLCUKV
	sFyn3/PKoNIhwgo7L60ZdUbydnG0M7TZm67PnTso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657934812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rCF9AjlVrIQoet7RNEnLMoEg/e/Lu7sAdP+NiGwfTdY=;
	b=KqsEqO+rDUOf/yvUIAMmEe8j2xb+zvP+O9zDE3kDfQq7Z6F5XDrOIugSnIlXpLaA
	9P0xqEPr1RRrjRck6hWM968Mxc5Sh6LwApAbCFJZqjLuu3b1A2T4Unju40fzuHLPs58
	0AFW2JRdAyagB55WWIcCuCi3rNjA2P3tqpqf9CYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182049d94d7-45615ca4-acc2-48ff-9b41-d26f7c979535-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4755df094305daa2b24d20cb50bfb84548ef663c148d3cb8e9ca2ada33f33a59
Date: Sat, 16 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657934812
