Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5934333BBBD
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784692114; cv=none; b=miFbf60JejHAuVDkZ/PC4K+/aBogf3bfxkmQlBgrSl8A02glpR74bEH6KBZ3KHfrodSAlxjnZd2mzk8YZ/RJ5hGhOHdWvMqyBvlE1jbvEBcauDEE/JN/jEtC4xYCnf3eBueSsO5WELtdPcVHqHN7b6MGq5TivuZUYD0TarutELk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784692114; c=relaxed/simple;
	bh=W5nlP/QBlcS2DP00Ckv3f2R9OI8K+EuriXaOeEjR9Gk=;
	h=To:Subject:From:Message-Id:Date; b=HK+okbW71jKLLJYf94C1vSZ9YMZKvMWkmrAQSD3w4Ey9wofzLdftXRwHOlKwTPN7tfQRwMSm4fOhdXQvlD9oOPhPFF/cPyKdVLfWoDXWlQG/qEL3jISpScOvHAfAkTHTHaP6M4Wzf4GXAPwSY4XTVj/GBpDhc8BuGdp5jgjS2r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMxKsFZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMxKsFZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80C3C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784692113;
	bh=W5nlP/QBlcS2DP00Ckv3f2R9OI8K+EuriXaOeEjR9Gk=;
	h=To:Subject:From:Date:From;
	b=kMxKsFZuYPRqETOc4z8cgbi6MLjj0AU0TJ5mWUTT3/lmazIBrI71NF4HIuhpqqtGa
	 Bb3oZAmwYXiCiuYzabFV2AiBKooFtIKFmK44xnDEVYQrdrdX/NtxPGBcyGV6vNpLle
	 9VaYCUHEuXax0GLlVWXU0p42ZEkZB+7o9fgd51g/aazF8+c4cr/eJl2uYSRqImPEuM
	 kZNsmobqR+1r0r5rqGHrebZ2cMQTwXLYhn3Xar1n2MSpZsMTDnNVNSal4tXkwLV6BW
	 RgpDqoXikCr9lHXagtT6dQDR9LtMdEc/9M9GLCNeoAtYzHbHO0aAmDP4MKYGPnsdqp
	 wEv9ijzFepsXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E3CC4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469211372.22858.15557265174830987121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6e267833bfc9a74e185b80dcc13992a23cfdd1bf9a70d80e650fb0168291f5
Date: Wed, 22 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784692113
