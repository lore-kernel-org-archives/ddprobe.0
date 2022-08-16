Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D9E539F
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660681252;
	h=To:Subject:From:Message-Id:Date;
	bh=//IO45FMGuCChD35a2ZD6xZ4ocEAODW3ylDnTxxryyo=;
	b=dkUnjuU7MZV9l8EQmct0vn156mAql+euuZ5dCB4/fVS1P/UJHRVcBgzpgaqlGgna
	l7K1IitH+6KHgLbo9g+xZEk5pGj9D4s1lKiT6/Sbc8Qq3Hm+Q1QfaFwZzTo+Gj5X5Ot
	j2AF0p5dTwkQ1A/plNPLqWTmwrv8GOHsLROxbrLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660681252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=//IO45FMGuCChD35a2ZD6xZ4ocEAODW3ylDnTxxryyo=;
	b=jbQXW8hZ49jDy97mThsYzj1JmH//9/qcEvfnd3w6EQhNkAonGcqs2bjXZ1vfzBPI
	KcZNf7RC0Lz1ih1PCiQQZ+3LTGn1ZJWHXUY9jaZ0lSS8qb7xd85WB0JtzFh8UuuPPsa
	vS8kFrMgqFJfjfxvR69JH3aVJQx7VqgpoI4eiJsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a850ef37-16c1dace-7822-4cd2-be8e-d7f1fe778682-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64390c8a85938d62d94ea9885fac94c5e1638ca38dc6c04a3261f292e7df556a
Date: Tue, 16 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660681252
