Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F687F
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65829C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664001053;
	bh=eRtdPsgu4BqlNEpMXx+Qh6GKgpcVVJkzPLfTifJfUIA=;
	h=To:Subject:From:Date:From;
	b=prtIwmUwIVjsmVEmXbu5BTeHsa31bIJNYgeNvKaGTsVLYcb0Bdmv9i9CSfjc4UkG+
	 /v0vErh/RdbDOiNSD1zwSx9DvN5u4JYLTQaeK47DcbKVRjLFVydq4kJwociRjm6jOy
	 dN5MvqAbDXqvYL2NyFARy22+AIhUdgfOgx7D76c5gWK7rCMbx9wC1NLtXxrLw0a0nb
	 THPnEUXy2PlaCe4NaaqwhTvYGdhvr3HNAprTZ8NZeFRcQczqOPOjLV/NVRfs8YY/eZ
	 VRV30E8gVlIeGdq/1+Lm1lQA7v/ecGhuiiTPKRYGkvTo8N3oU/aRGGMHxrPqWYYgBi
	 q1Q2vxkktsaaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF1FC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166400105332.2093.11582817794317959541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d0f407f550b550494e2d63f926ed67aaf15b843e900fcf97e49a67e0838c58
Date: Sat, 24 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664001053
