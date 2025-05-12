Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468E0535D8
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747025394; cv=none; b=M5ko6qwDTDL+JCpCZirlGeqX0Rj9VnQGTI+BFA5nBUvRJt1ViLs/UyjfrXgpBPCfXT2xmQlHkVdvfKpYr35YrxPikQyiXjj87VcLj2jZm0p4rZvN88y2NBRMQNoJwJGMO4Q5F6O2sWaAybdiCL/B+bEFaPOqbpAtTkxhE6A8RnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747025394; c=relaxed/simple;
	bh=w/KpN6ZaoTJmgy5BpN5s1B6Fu3SocUGQL+oEMIXVo/4=;
	h=To:Subject:From:Message-Id:Date; b=uoNp8QOqA6dGSZ9PSQbpuW9ei0aWU0vicNb05yKjqw11X88rPqV5R1UvFwfyD1znla0gU0ilK/o1rAiSLvHgF4yAqKdNfddlYCb4Tqp2XZBHRFvU2/mt+7V/PvFu0l18Ax3lHU4ifXm8a/T4IaMS8UHYD+edpOIeNW3pu3k0t1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iz+DfQ0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iz+DfQ0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9A4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747025393;
	bh=w/KpN6ZaoTJmgy5BpN5s1B6Fu3SocUGQL+oEMIXVo/4=;
	h=To:Subject:From:Date:From;
	b=iz+DfQ0bFhm44oPaJJG//P3PBUmpccfZ/MijZV6sRijq4g/8zWWsFSETpnHqvmq6F
	 V98IdX+Y6/9nzAcrzmx26hrH0r5T5Ymzjod4FNR6hRviMTmCAaEFnuVLQD8OZC4Ae3
	 nuOSHsuGnD71gilN313X1EXV4zve+q9Icongq+6UYOkR/NPdc9KSqZuV0PcNVK1NYO
	 80mvX+RyYw7mRoJCjZPsb3zwluMni7yCoLXtrRX0brJbV8vwzFyDzeX9Wm6e0+Qc/q
	 YLure0mxpY3SnttyihS+ZL3HcikJ9/xcfgI6s7hmm43OjoDVAIxoaJOLGpQ64ZIg27
	 CF08FKrY5gy2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F21C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702539358.27078.14435720568306379754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34bed5d9a3ffd21bb39bed27893fef1d0b95d5111aad328a6a39357325096ff
Date: Mon, 12 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747025393
