Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89FB47C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645804285;
	h=To:Subject:From:Message-Id:Date;
	bh=j/ml2alKosONuEJAA4yww2KC7QqaJVPKmy1kZY/tl4s=;
	b=PuaD8c8D6RNwAdP0sbuOsUWvRaCr6mNfGUrA4z8OszerL9R/DU7yzBhLuRVzwjBu
	r6WR79tFTk6YijV9ppKP71yZhKpg9OaTOxwlZmJjz2wnAOrvv6pL0BgoYUVfXXkabVa
	X2WcR/S1mG/qN/M5CEqJmKaXO6+u/ozwtA9te1Uc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645804285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j/ml2alKosONuEJAA4yww2KC7QqaJVPKmy1kZY/tl4s=;
	b=lVRmG/OpZxQAs23GnCxzZ0XhgoRobRCz52DLkoU4VoC+dCI4TN+907bIFJsVAtvy
	d8M/VroE7T/DA/A7L2fgSgOOwxLRkXEuh4z2JAZsfCqid9+wReIfk52qBSCKQ4j5b0m
	nO9TcJPgBINivP6jSDF7lBwZHvX6zK3Zwl4difJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31946c1a-16d4b3a5-6eb9-490c-992e-a2f22f2505d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32cfa24ee3783cb71ba109e4ded163788c9b0fe4407218e663c8cca4124b4638
Date: Fri, 25 Feb 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645804284
