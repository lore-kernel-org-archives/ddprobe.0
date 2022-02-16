Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DFD41FBB
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644983184;
	h=To:Subject:From:Message-Id:Date;
	bh=pYhJ7e+Y0ztyW18bAkDXKYLtRyTVPVurAqMbIQy9ld0=;
	b=lCOV1JwMbRGR21Lxn6eEHBJYwPcDNto2r8uXRNC3C36mCu41d5eY+6jyHzMTh1Aw
	++bOZhWXxyZ5cMlmTgklxNd2+DN5l5iMfCjzaW/glOYEPEs9Gl3GxhZByWspWMjtb24
	0xv8r/bBHlDwkPF+ejSiMIisF5lIycc8GCrmx44A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644983184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pYhJ7e+Y0ztyW18bAkDXKYLtRyTVPVurAqMbIQy9ld0=;
	b=Ij6KHiKFZOj1HbGEb3U6pKfXFG2SVDoqWvwpbLUt8Sgo4x9uroVLjFJiDbhDFT7o
	VXuXk++33YHKT4rTtU4208sRPm2SUGXVkyvIJjkuYMcNJx5UzfB2oE0r96mC7/iNjjh
	vnbMr8tA4Hy7pzhikjoNs4+/8jQcet5qUDTamkC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00a36d50-6673b2fc-7251-484d-be99-e15cfc7a59b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 304fd289fef0bb7d9bf3523aee3e84686c2259cc141cd463a1cd85215b282390
Date: Wed, 16 Feb 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644983184
