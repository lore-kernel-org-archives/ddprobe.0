Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9869D7C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645861284;
	h=To:Subject:From:Message-Id:Date;
	bh=4bB1PZsni9FutQNRdBvTUPajsjoqj+3iewUlnmpLe7Y=;
	b=aDjWB3k7+GlHOBcC9KSWfn6EmiDCgliUx7MBZ365K0FJ0hmVHlKwksBi6jyuYaM5
	xPAqPm7wzptUV4tkmEJUaLgcy0Dp6v0ic5/Q1UK2RW0cWld1uEPi4QJTmpZOSpvzdkV
	UmO5X5rR4Qp0SIwskBV0GQGFwadow4b4p9+UoV30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645861284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4bB1PZsni9FutQNRdBvTUPajsjoqj+3iewUlnmpLe7Y=;
	b=SEq0ns5wyuJ1TKf+ZKXy/0R/rNw2/RW2jB957DHzSCP+I+dPFLTvQYFN4xSNHAOO
	zs/iBWQy4hCswApypyWBFqfNFGDxJDhw8791TcZtgE3YhOhvJb0AHWvU3FoVKzwEN/A
	ZjGcujWmA3fuk6IS0EOnctskwWwrPB9dJJamdpPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34fa2bb0-bb270277-fb0b-489e-baba-9fb1ca5d0bc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4881897b35bb0882c0f6700c81d59ac0a7bbf561d4df29c0551c48b372f78738
Date: Sat, 26 Feb 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645861284
