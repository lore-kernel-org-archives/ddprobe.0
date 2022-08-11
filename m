Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785962F5F
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660253452;
	h=To:Subject:From:Message-Id:Date;
	bh=Sy7TwX0jxuxf7fSTq2yCw/BEYrtVHzknKBxW4fUyeRM=;
	b=DSmRhUl7XdmWJaQEEKpAN6nulrkjOrQRLN6Rj4jhAzt//QNSebEeT9Fyq4pdG4Rl
	EZ4cvfT775AdG7c2EmX/X0gWJ/tsZNIO9sDIstHP+aHBwIhvcJjEE8k4stwmcRWB8Qb
	XqOSF+jnTkG7Ca8RE561WCR8eizj7gGlkj2nxXBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660253452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sy7TwX0jxuxf7fSTq2yCw/BEYrtVHzknKBxW4fUyeRM=;
	b=Rhq2tgwWeq06sp7SG/2e84ZqdGfqM/emCDa/JFyoVsWrbE3RVU92cEM76f0XpyRb
	h2QvV/uvTrbf/rRlu8lzxPW2LVaTkOTWC4Hl4mIXtc09OFQU5ie2GltFrHi7W2zm35w
	NmtZRB+z1KdQFuXrxkv3HJlQJjX6OAPep0wWmtpw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ed1390c-67d8b1e5-cd5c-44bf-81c8-f5f4a93722d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d445e3eda3198e5338c50ed98fadce9ec79dea33b730dd31f491a530bed5963
Date: Thu, 11 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660253452
