Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0DF5A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646949084;
	h=To:Subject:From:Message-Id:Date;
	bh=8E9arjsKB7tKV2NwzUQhL6Kqqc1Jw/qK4UBD0zaMqlI=;
	b=SIBXOJmekKXm2lOYuW2wbHajJRIozV2XM38vQjoiH39sLFgceKRj0H1Nd91Uc8Om
	lqn4AE6Eb5x3m6AuwQGBYXqz3Iz0H6QKDGiAKGH/qNZLRtVOyN66VlCczzGL+BrNcun
	dwK17zXu4Nv9Ub7dyUtpAsWtnOVt+BltLr58UeR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646949084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8E9arjsKB7tKV2NwzUQhL6Kqqc1Jw/qK4UBD0zaMqlI=;
	b=ioFQwD2b+ZaiZ4ud2eB+N81MA0uFap9tQy61Hw+/HCF5U+gxruRfk150D/M41Io4
	U8fjJbZZGMjz1CpW0ZvovgDu+/T9iaaBBFwoFqbB4SDS4FIJ0p/ltE7KDqXMhs+wYtK
	f373z7WQ1aePaL2o4ByW+qsbTrgn7z42qqO7rfWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75d0ae5e-9d2aec2e-7100-43b5-853d-a278685c2343-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac74797c8d20275f9e94fbcfd7592e22a10750a00f25e73dae02cfd3315ae274
Date: Thu, 10 Mar 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646949084
