Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195BA1624C5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758396595; cv=none; b=jZgc951eaJ4HDx+D0wDjzgI3+biMCC1jSjHbwKCcfnH197vNCl9RxeoIOFJE5FGQuA5AqaDVvc9++zfL7gYT0t2uur4FVb9B7XIvdneNjbEPMjIloLr0QEUzYFqihUt/oqL/ydB5wD1lWafWD1DxHSgZdELoZMFPH1cfJGqCjc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758396595; c=relaxed/simple;
	bh=U1dHfs30+gEXgPy9r3PtH5siysvn2o468BeiTQCe4Ec=;
	h=To:Subject:From:Message-Id:Date; b=Iw7Ffxo0P7cb50txpFmIqlBGBbeVLjuACJAf0LVlVsJyXgcgiPM0p1MkArbN+CfknbEmBqN363XhqJiXgPTuk/9n4knmqLOit2WBb6YOjq24140Ie7wFtAAr6uOLy2tTlm6b96aCGv4MHRRhV4x1ui96+gPykDwh5NsGd9ywF7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxcFG6Ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxcFG6Ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37DAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758396593;
	bh=U1dHfs30+gEXgPy9r3PtH5siysvn2o468BeiTQCe4Ec=;
	h=To:Subject:From:Date:From;
	b=TxcFG6LlQcch1uTXmaoOz0Am91SdXloNpbMxrLezbYJRj3ezXAhBSspAlr4+RLXcB
	 qbKs4vAdd1BdpJwehfb063C3Sia0wBfD2//YvMGQcE8sqJp+BEXRLUG6HVs2PPAgLa
	 MCJ3VE+D6j2fzPe4UhZ7vDwrE9903nZsMrOnHY/p4dq8XUR8yzAMVNV82xBmpJ7FVQ
	 vn8u8N6t2SMDx/LlPoSbpnTMcI0SZjV9C1BGwiyFQgx346UQlN86rXg9ffPgaLzIbU
	 QW6iDWDfvq7cj2dHM61dksNVrjPRTUEbZqM06xMLmqtJuR890ggFvi5fx5H8QnupV1
	 uiXapZj+IeEOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92571CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839659357.28019.12742009644549891781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e685ca8f327ec3a4c2968d96957b1fdf39fa5b4543531dbafd160da8b18826
Date: Sat, 20 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758396593
