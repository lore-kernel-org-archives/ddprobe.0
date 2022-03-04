Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB017C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646366185;
	h=To:Subject:From:Message-Id:Date;
	bh=2x7TcBuivJOHk9/Ek03jjHrlHT4CPXHLROJaazpiUi0=;
	b=Uu+avx6tjFb7sBJLwBnxhvol4BrdPOLFiAE6ybpLFefmudyQCdOTS18g+bXh+x05
	+M+grHxYGtZpD6YgB82Y6CldSFkc6mwmg982Pup9jARkoaINsI7C2IYFgCmKm+mTVCF
	Nx+leb3MVVbW8Y5AOCjJ07pM6YsF3M/npOSqOpj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646366185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2x7TcBuivJOHk9/Ek03jjHrlHT4CPXHLROJaazpiUi0=;
	b=TJS+2h8FLcX0UeDgmJ5BvkSwE/p3wyDEzYtvMgojBb2g+1Z/r8DdDqDmxFEHI1vs
	cWBuM5kdigmQ6Il8P8rJfML3vQqiKmgKB6rIRyycwAiRnEq9xxgkXED3mAzKsmQ8T1G
	31v3TJvD1891K+O+m2J/ytWDUum/GxUcTPUjg1YQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53125568-25ea4092-61cb-43f7-8dd7-b63a0b9de2f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0ded50ed3d66b4074b88841d7cc7c11b46d2fe85221a4ba56e7d8203e377fb7
Date: Fri, 4 Mar 2022 03:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646366184
