Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2922E7C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659811252;
	h=To:Subject:From:Message-Id:Date;
	bh=zTHfdW7Schz+tA3aA+bY1/FgIhKyEcG4Nc3i87b8CbE=;
	b=J05wcdG2slLQEukbwDP0sHHOWduzs4lDLSObM8GYpB1ybhIfUIqw+dClct26crGl
	Sk4qwM+9CbX68yKFM90AQnr+LUDtPfk36Ir0OQQADOzqmnoJ2yhYGkbRZokF9UjUDg+
	oaENnUHSE4hfg7WiH+RQsGVwcUazdbwj/tiM+EN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659811252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zTHfdW7Schz+tA3aA+bY1/FgIhKyEcG4Nc3i87b8CbE=;
	b=KLRXbPWUTvkrngOTDn2C3vWq9R6XH+0d0lQDffPtCopFMNLAKYnC22cYTUiTPr3U
	r8JPW3/NRaFBmFpVyCHHF5t9WCMLT+6mqSN6UQbWL1QTjfXhtuaIYXA69PVckF4LzbY
	8Jv14rYZJD//6n+rWLUHJXfAHrcBA/bni22HAGlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827475c974-7076db70-baff-41e5-b300-3d308b683b6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1806d594ff5cd7838bb7b2ee9e55e1f7ffda2e8276b6abc9fb29faa7e736e7f0
Date: Sat, 6 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659811252
