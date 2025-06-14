Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E74417588
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749905994; cv=none; b=Fx4NHUBKTLPxj+jQ4XW+Fspj1IASh0Gw3G7VgkL3yF+bBb5vyNVUZ+Tt7rfNK7crXwySdSNWEqa8bJmuapfQ0jdOsU2a8cswGdNicxyg9m275mfv/QPxuvIAJn3nkBEww+dnqGn9XySt2GV40cBHYhoulue8UgRA8OQOOYlZ1GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749905994; c=relaxed/simple;
	bh=TOiHp22HqzuuDVjhZsCGBfizn62M4ukeOQzEZ5LK+3g=;
	h=To:Subject:From:Message-Id:Date; b=Yq79vJ4yt5DqLHxhG+pYu9wAvFmN4KuasJKfQuQeXrYaHCTtg0MebNKSGqpY4F/4RhWH4bU5V62OMd9Fi9XUNGIlYFJ8J31EtAFE4Hhzd0d3rlwhEHv8jSL9rk/uA3Gnt4W+to3R7xu2fK1qaR9okOAiJu3lVbgiSyH+/7rxwj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z56TNJwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z56TNJwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D18BC4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749905993;
	bh=TOiHp22HqzuuDVjhZsCGBfizn62M4ukeOQzEZ5LK+3g=;
	h=To:Subject:From:Date:From;
	b=Z56TNJwKvuVvXoQkUock3mTbHHplPU66Kd4Gq5dUh7bIxIgp3HhHNeuTrLRvZlMoo
	 7NJGkW9TydgkJXaeTpoWP8PPAswjpe3BjGsefv9aWpcUAGjTRBMNa+WmoXu/4XtMkU
	 gpSF9cNDN/4DT33RHiofL59adu3Yvaj1KPnHOiL5sBWbI1328RGjtMUSlufOHyf0qh
	 257MYX4jaArrOqqbMOp/MxVmqh+S7z+kdWrl7dDiQDxRPLDCNMcv7CEDGRS0espVs6
	 bAJ5GbDyp+Jupsb2o8vkp8z5ydJ73zZq/1E+Rmf7iKrZJRY3y40bxmIIWx3idfi8Cw
	 pL/kHGAUYI9Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD6FC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990599357.23073.18199384104582928426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3bbecb3b2a58c3883a532f15ec030a75676f6e444454ccf9fea9c403df1011
Date: Sat, 14 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749905993
