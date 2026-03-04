Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4630020E6E2
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772628894; cv=none; b=dQ5JPLc997/4TgoVurbwFiE4qIqlaB8Jmae/tZYKpmPnRZjRyELj6cP2BPYErYc0uAFkdYc/nxBrAgX70E/wWEEgGBGL8zuiZGnrEJRdTFf2qpkC71yZuU8Z7AWD6i2qWYucNZDnC8UP1ec2s8QY01ahGuct+L+CRhNs3nKe/Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772628894; c=relaxed/simple;
	bh=5IrfLewxRa+wiht7HKVz6dLG/oKcYxJC7mIIU8bT3Oc=;
	h=To:Subject:From:Message-Id:Date; b=AJJvOoCBtBN/gjv9VFy1FX1dkdixFGOdZ/U/jXBm6A//6TLjxerTXeLa1QflU4HbszkYQ2uIxyGu6NV8l6ZKa4YzzFleUQhQaRVq7xD8U6pkLi467N6zK8Ev4cCYLWY4eIkXmXiD6jnwpiVRW5zUD1x+bgTak7M/mg5BCIj3SC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqsP9jd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqsP9jd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17FFC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772628893;
	bh=5IrfLewxRa+wiht7HKVz6dLG/oKcYxJC7mIIU8bT3Oc=;
	h=To:Subject:From:Date:From;
	b=FqsP9jd2PvOFZcRNF4lMu3DydUM1jeoYW87YpOw60O/12T+A9rD2mNS+r0jEpBnSS
	 SUkx7IU7lEwfvaidzQKrK4DuhRudZEKmi5Se49QEc7AO34+rwN5uERjFISYyVJdSP6
	 mYsvjxPeFJOO9AKjpgsxwDRmWOuxf0Ijwb482dJYFYlJdHu5iGz+uo/xeEILjQVo/j
	 rcT+z5+OeZNvwKppS00HZkRlhYBd821HDDkcbdLSQWrl7EOEBeEOpV5AZ121ESkyDH
	 QZirisvTp9Tt2mljm+TGPwmONyF6OTuV0NwMCDe9C91RJhcbTjsyNK3HhDiUkdDLVY
	 izXJc2zx+wEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A22E67A8A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262889359.4897.435851640827494389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e3bc3e2859b156a3f53047a53308c891210aaaa92e4f839bbac5cd91610875
Date: Wed, 04 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772628893
