Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3806239E88
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762012793; cv=none; b=eLDyQErnmLW7zk3bsCkz9xWnzpmnCzcqGU5KRr9ruBz0sUFHQDwx2CTAWhSSjKtPXMUuPzMCMjb6K2Ue3mJnDxdnYTqfxRInvmS5inV28tzt2rTJfdHytkD7CxPZH3em7R75ZQFFvcr4l4kiFk0dC7BzjbsbGysGS+M/uPukj8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762012793; c=relaxed/simple;
	bh=5f5B/vXTysDLkOqtDbz8q15y5Wt3QI8lsaZ5Ro2M25s=;
	h=To:Subject:From:Message-Id:Date; b=jGHWJ21Q1hfvE4rL1tBuT4FQEeOMGBxF504lR1GGA5Kt4MH90vqX4zizyp5vMr5s/CrUoahWtvg6GZqMTYAluJXCFLjbYDFMRun2KIWV8ULpkd9nVyi6AiAtH2DM9nF74hGGYKb8yoQ7AByulkhMEYYQUJGMx+JKLqSU4A+p8EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmRqASYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmRqASYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7632C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762012793;
	bh=5f5B/vXTysDLkOqtDbz8q15y5Wt3QI8lsaZ5Ro2M25s=;
	h=To:Subject:From:Date:From;
	b=bmRqASYQeJAei66hK3NwcfHbuuaIsqZ58CZ6iYHsYOiz/9Ft8tlzjBfqE7FVjxHFd
	 x73lwh/vIHoF80zHm8VdvKZpPvbuGAQ6Ct7P/gw8838AdrX3WKxB4nywR/7sM4pa1I
	 qxFYrFzh2heTCE5paQCbAM0zt71tXNpgGfVS+dG6PFG1HC+oZcqkwhwGF0NNnwqgq1
	 YcEhtMK2dIO5G871P5BDtYwNcbL/NdYLNbyfrtLFRUXWDwsp707wT75UQD9ZZaz6jq
	 VD3MkDrGFTMzNIfqhZWBXj9MAbLBcPv31VPQnp3xu+98YVUYqnmNPthA7IFC+ITBvH
	 oHpihBnS3NITw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB9CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201279357.3025.5449033457146026340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48523d6fb75d615b7a63e680ec8372e5c076089568b8caba0d887f207aa9669
Date: Sat, 01 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762012793
