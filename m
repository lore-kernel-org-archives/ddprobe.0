Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515F61E5B64
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783876714; cv=none; b=PHyQBZ9VAdvd+aRQHqdnGhSo6jVsK5YMPfjn0lvgM3ZSHXD0ED/w0Qf4w10Rqc5cLg+o3wJaFYlDeplaIwe73ItcpgGb5e6hh/2BLR1LB1R0w2y1Ut8YCiGxtkc4KZLKX9p1ot1/LpGP8Q++42jZzTJcHJe2GgZ2QxgQpcPbrUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783876714; c=relaxed/simple;
	bh=V1KqiQKmHeZa+Q4sjd7XulUpsKxLLBvx4TUR77JaYoo=;
	h=To:Subject:From:Message-Id:Date; b=XYCqdnksfVTJWxGYxkzDQgI6tVvArWOLMz0QTpUdh0L80S9OMjB/bFrluKiBff3My/if+VVwYlf9IrTe+M3SaV5HUYLdqzVPOnZJjXXbd66uyw0m1h9+CVheRzIJ6ymTOi3cpeHcYuBN030MalC2EpNXZyoFOJtyQzV10Gg/4HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKn8XdYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKn8XdYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AE7C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783876713;
	bh=V1KqiQKmHeZa+Q4sjd7XulUpsKxLLBvx4TUR77JaYoo=;
	h=To:Subject:From:Date:From;
	b=oKn8XdYOJhxC8mVqE6aEsiH2u5Ws7+Mx1FjvYzQICL7Kjh2O8ti5W3IJNn0Zo6dxn
	 oZLniNlWRekaCi5ZNSTD5EuujchKHqDd2x2Bu3lRKwirF0tXo0vNsYAYdam4+pp+rq
	 dWdXg2DOIkAX7teVRsYi7NqI7lUc0JREtA9iv6R2Ytz37kgDIyO5VDoUr+fKlzSJYb
	 kbOJDBpyaafjhbGUWR5kZzNmjyf2dkbTyUQgJsEvqVxLLLLz6Bh3FeOpF84vMDlYEK
	 CNUIklWGJymDPuHcVYnD2bpYojQaRxgMPt1rBb3spgio6h1SH/X336Hr0G/SqTveT5
	 hWkZjWcYT0HAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE878C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387671368.21108.13961386882927288606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530d7fa057a57adbdde8ad1f15a2730db16a651a55fa90c78490620814de778e
Date: Sun, 12 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783876713
