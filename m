Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FFB28917
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 06:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E28C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692945248;
	bh=WkyARojMnPYEEhwipccG26ks8zbKBVNTTlE7CkkiBuk=;
	h=To:Subject:From:Date:From;
	b=lWlvIHZ7nkIO6lvmHyEQo2AEGeDCVSAIxDEx6HF/xpubmLNd5h+6EZwSKozv2XJkH
	 L6BIgnyCOVsHljCrmWeTil3CWoSTtp36TAlBmFUbHykXJ6bqUPuSSgSXa9l8jgvcA2
	 mT4tFofNEaMlslpYZKgoXk5dWnUnbn8mHnkzuQ+gPux+GKqVnt66dxhVzL0e6FJWqv
	 80AD1824FkbXbthDnnYDjfsADPd6CGgcSezEuv0pOuaG7Ye2TcYmPS0L3Mz9bi/LG2
	 6MM5GI1xXpYbFndJ/40KBz2jFh/zeSJF7HuIIL9px4F/8rKO+QoBi9zfdxRwoLEILk
	 mtm+hN3jy1meg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE252C3DA66
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169294524870.6512.2539372847431789368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9d00795bdfe220869a6a44c11f7845be31b689bb0b2dd0ae254e76fd8d3edd
Date: Fri, 25 Aug 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692945248
