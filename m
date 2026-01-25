Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC03823A9AD
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769372633; cv=none; b=cdTaXX7PF0Ezx8cm6dXseV2NBfTgK0R3wcmRw3Fsq3eShkvgOgP1t+QcAcU5E4qcDWOHFvX6RR5PQH3Xl6GUwrEQxpNoiE+kw6C0P0/WcuNl5VX1K3ph+H4cIdTGls9paqsECxqa2o9Xr++UDYp5lwHw4w43ilxD6FRLjk26kuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769372633; c=relaxed/simple;
	bh=9RLXZXRPhc3b+wkkP6OHIPxY4DiRLmQ6nPJoDsV0Rug=;
	h=To:Subject:From:Message-Id:Date; b=WmeqOtTUXwSwCW1VUot7F67ds6yCDBT6d/HIfBb842HREzrIqXqNioTl9Ac/NMGigERdpXIAuKxUxoMtycEvRajcwKOUAMxqJ4++GSkNJIFbljWvEKQamwq41OutpbvxE/8ZQ7j4m5jgb1CHQVYBLoEBvgHsMOO6xJs4ryMSx5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3JvVon3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3JvVon3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D01C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769372633;
	bh=9RLXZXRPhc3b+wkkP6OHIPxY4DiRLmQ6nPJoDsV0Rug=;
	h=To:Subject:From:Date:From;
	b=T3JvVon3cWNqrqv4dK1TDsc4w9yHuT/9dUXeJ58T+ahUuAUAX7ZmJ7fWd3pwqj4aZ
	 PmCP5fPqdRTSJ7f9jGE9+cQFuJ8VfJ6J/IT5yt0a/QvCuu6unnsPSNNbQoGd7CdQgb
	 5lYMB6gvzgL6/FaxjXH21qMtLFBu1ceZj001YFa8KaNuPyMSllRj13A3Q8Pzcv11e+
	 IPzYChTuopA8YmpLJhC3V6Fu6otOJwpNkp8DGl9aIW8AtgQLiffdO/tn1HhTK7gYfe
	 NMr0BFFmDUYd3nO7dDnAf5O6KcywRzu64Uip6qVp3sV5EJOffA2Zzu+wGLLxDiy9Kj
	 0PJ7KaECR/Njg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95436E63CBE
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937263357.3507.12158574347959017079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abbe6210e8858356859a825768f301e8fc979642e476ead9f598a42a7120dba
Date: Sun, 25 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769372633
