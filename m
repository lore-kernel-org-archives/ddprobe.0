Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10138321B
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 17:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649180398;
	h=To:Subject:From:Message-Id:Date;
	bh=zLfxuzbw6tlnSY0N5oCqUKBImq6UHTznSUnj2LFwMVU=;
	b=mnx3hO2eBdut/efMM5BpERfBiMlpkx6q3+rVaiz2B3M7BynQ2cZJ0bA87ijsR7yU
	goLYeFC3Vi4tCQJnRukblw4LYWQH6ICJNj1Yc5HHAYxJCuB/w1WJKdtsV3jELaDgOap
	/V+JMV/8IuJL86Jqjb41DlSpfUpvhqHj0p1Xf2iY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649180398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zLfxuzbw6tlnSY0N5oCqUKBImq6UHTznSUnj2LFwMVU=;
	b=ZizdJpw86Wtrc0i+QIa/egDPZcCodwPNUKVNdf6XOauxZcBUM7GY+8ldnTJTZZJX
	UzTEIjuEXziPDtFz6n02p1nRniLrd2BEJS3NvuL7FOuSzaUk46R+dIlNgRWYsWtZdIv
	0YeVK2StfCGKAyQ0fkTnyqwN+Jeek8WXpnG2Gsec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffacfd2cf-a9f189d9-2c12-4020-94cf-b2fdf82876c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2aa70ccf60162344445cb189fb1786cd3b4eaa4ce76e6bff879e0cf0be59a4e
Date: Tue, 5 Apr 2022 17:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649180398
