Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFA52E636
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719211943; cv=none; b=eeBzyz1S5wV9Ryd8k2E1CfQVh9TwTVxoHZZBktlmQ1Ga2REeFTA8XjJZpirRuwz3P9HCIrtM66Y0RNGKtCOX6YxMdPYjZVK/pZXqXeBMAYLSVirB45RRh5ye8I7Psf1DJk6ZOwUY3dWhVirXNBPgpp4ksTbwqhXPrdcx0kzHXJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719211943; c=relaxed/simple;
	bh=T7wH0mGpE3j/IcQxIXM5kvi8WZ9b6aGGQTmCoWYTO5s=;
	h=To:Subject:From:Message-Id:Date; b=JdAEDKHmxyr7i3AS7ymHxuHSX90lYj4gWM2eN3JHmZtkkD06aSliaFY3hOzEHZZz49NTywusqP+1tgaiffkGyjh6BpueMcmg9Aq5Wr+0X4qm1Z0aO9nhC+NoBm8arQZtTIlNSM8ifZgs4TNSeUaDSK+JL9o2+IH9Uh2xIT6NOb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8ZHwoTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8ZHwoTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E35EBC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719211942;
	bh=T7wH0mGpE3j/IcQxIXM5kvi8WZ9b6aGGQTmCoWYTO5s=;
	h=To:Subject:From:Date:From;
	b=W8ZHwoTl0+28QdN1jUDCZqZgKqMmUFF2+PlnkkGYsmSLfwWl9nXV6jMKJw35473lG
	 KCReGDWt7zKJRCCRI/hKwI/PwSwFIHBxftLsvreba7F9Ig+18FVXWnXsqiSyPA85oX
	 sjyFZ9Q1cat9ST0v19W+qSIKbHRP79bwgbeO9O9QWRby72hcHy5IQVTG5CqS8yYelr
	 X4d9q9ju1riSjI99+7g4M2YSuZvjYV/sWHy19GZerpMSKDr7rzJcvfq7f91HTu/rrJ
	 UXAV4hB/hGplDkrh+QMnO4eifDwnqcYgVc5P03+5Q7P2SYpAi7ZkKg2BW8uFW6VpFE
	 BGdxayUqg3qPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9EDCC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921194281.2305.5000392388539662024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9dfec17ddb28adf3b9c78dc46c8ab833f6bd474fd5b452d2a0868f760f025a
Date: Mon, 24 Jun 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719211942
