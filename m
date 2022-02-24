Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F753ED6
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645673485;
	h=To:Subject:From:Message-Id:Date;
	bh=oyDKQgkUnlMXUjD2Gl1i3lBO5Yzh5DBPPkIb6fx86Ug=;
	b=aSfssTDBB8ANno0PxwYJCAfUnYK0swKCqyiLXzgWlNX+MAnxXAUiV//KzBYvI/EY
	vyFcY7IAgMXCTT9EKOm9mlsbprSiE17SvNqARrJKzC7SedoeT+ZjqPOFP2fcniJHFJ8
	EwlJg0nvxIvx94xKQd6NN9VcJfdent7oknZO/LAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645673485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oyDKQgkUnlMXUjD2Gl1i3lBO5Yzh5DBPPkIb6fx86Ug=;
	b=UwPTji62hOHdR0O/7xqvl3Qenua/uRksuqqaQxs8V6cGoxLjBb12rA+ykMkLDGRY
	/pQUfnMLiJ18GgiscQ+J2kkyv0rI0ZYNlPi+Rj6n745oACty279DUARbUDSS4jY/p+K
	NzQCT2BtZy3BpN/9T27epPuEej+CjGeR5+gCslrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29c89200-bf39a6bc-2d93-4cd5-8708-9c2df77e5e82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a170162785fa56177be3e6151e791b709fc205994dddbf588b7bb73246b58f2
Date: Thu, 24 Feb 2022 03:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645673484
