Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE2C2EEE93
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787771435; cv=none; b=fv7/+y4P4NQq2Amn0jBlHqjwOs4k2E4otvth5Pz4/x8pP38fajCfm8frRltFTVJi0tDmAQg6y2yldufu5A7S5lg/6PdIGBiCJ9lVqC+0mqJFCjKsXGwOSy7GZpboO75z4SI4NQ9HawR8159qpc9k9ilNL1V0GuuJKcdc0NNOqUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787771435; c=relaxed/simple;
	bh=/vOVsQVZ6D0P7bgw/rCX3fGHqG/IZrzjepq2MxZFg1c=;
	h=To:Subject:From:Message-Id:Date; b=YW/uj7vz5uJN84jTBHGo42j4NVQalbsGFDH57zgiBvTtRVDffhMGcYW1G/kwdcb7Dp6Ro0KeQ54xWVzfvd5s4HHrZKkg/RYOpoVt+7j0pLo8hAvl21PCDLlKMkMuGvPCXo+5EowuQXtJp/JSbC88eYzQn4Ylp3/4wBFndcXXZD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5MWLTqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5MWLTqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A72C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787771433;
	bh=/vOVsQVZ6D0P7bgw/rCX3fGHqG/IZrzjepq2MxZFg1c=;
	h=To:Subject:From:Date:From;
	b=A5MWLTqnZNGEnrAHwrDA3vIFnuJdz973ITdtVCjabaI0JZlNEw3LbYhQf4De6pHSp
	 T81oDThexyZbmPN36Kngh/RMHkXug5hLL4FKF0NI/PWp1BgeG3MS3kLhmpkm5dtIXC
	 QqoQy9u6ILLOcTPRIs3SNwuo+9PMJPrf9f9Z8AYT3E0ydRt8Zq91m1MwD+35kGb8EU
	 Ljdu10XmNjOVDebmaLF8jEPphYZJGyr7fOWDRQO2e4e8WMEz8p3cLopVB340fJESbj
	 MJswaxEM5BleSKIOT3q/l/JfL5LhzekeHUHZ+4fDm/qkUQPZ3kKftRo6WfeBSuOd13
	 lVe2Gvd8IjuGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1669C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777143369.29790.2199992761186738403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46eb1b51c983d75f2600a6ee3e5a168d02fb8df2d777868eef00c57c4b19142b
Date: Wed, 26 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787771433
