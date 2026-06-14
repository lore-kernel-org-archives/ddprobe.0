Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928762EB10
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781468194; cv=none; b=GNVJ7vXzc2ZBhK5lhiSzRKYCVGEJAvseIqLD4gBSmSdTvjD+kkmpbMAVPT3bQ0iOfM6i7Lhd2fbzTQEFjFrH+AOI9AqibmLPV49Yb7L8826pJxb9V9Lpm8kh4s5BZJjIE4ifLWb/50HMXbuHl6vcM6a7xw9LUA7hAHPxUCrb0+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781468194; c=relaxed/simple;
	bh=OIckhavp/SKajAIamt/Mx7WLVHgP6kKGdeYvDrcuLPU=;
	h=To:Subject:From:Message-Id:Date; b=Qx6vHcOPnuwGNz3O0YkVQ0P8u2bS9wB5T30CcvbExTyEQosm2KO3HuDOW09OcK4Up0LVt7I3EO4o2HaVSKGa/6zhi9mRJLlqcQhGVJH+GTdjrjxaaKV6iN4rCWG3Mf95H10fgUy4qqGaUrqz8+nRTk8TUi9pESMeNMPv5jzoi+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZ0GC1pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZ0GC1pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA1EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781468193;
	bh=OIckhavp/SKajAIamt/Mx7WLVHgP6kKGdeYvDrcuLPU=;
	h=To:Subject:From:Date:From;
	b=gZ0GC1pBin2QUFZIePWxnnwt9x4q08In9nZa7E9/voRx2r4NHRerJH2AOP1Pewum6
	 eSGXUZ9dfobkhM9WYpClS7bDdyP2FQXeBmKAW2R4GxfqF5zw9VNjp0OT3CUOAeImpL
	 cbvJQABNT1nHWF9PQmfBTYkclcOjIfSDUOlzdpbUISAEt3NQK92ixNkT74Iw55He/g
	 tKhmaPOa4rgNVQ8BsEQAL1nM+Ak6a8SypHCH4vUO9PqrCxydJWKcgiAQmv1h/KiCwq
	 My5IqCCWUk1Xj4MQWb+Zht/VIHhRy1ATQoAx2ApFkGIk0gwIpLcHnVefgkhG+ma1iJ
	 CDZIDbdurYAcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DDACD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146819374.31344.8214600808598180447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7792bb63916480e7d95494f079155a2bda73f93bba528aa8232a4215b978d5eb
Date: Sun, 14 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781468193
