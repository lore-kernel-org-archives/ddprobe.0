Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0F71FBA
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2BCC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663820453;
	bh=aO0An3EzhgxImmQ/J7M9cX3+afjj7chNkmoL/vlfXV0=;
	h=To:Subject:From:Date:From;
	b=fYDVGH5Fo+bDijVlry0qycjSLCfzQXN3VxauOlz/hrb9kyvPvigjJtPxEJlIlEyzv
	 dSazPw1SZrrn8VcBpHyqpWmrpHSAr326ff16nPGn6uakLsjRmkoibPzRvHm9pZD/kf
	 k/Ex0Q50MBFgoJnozrHc424/iWfaE0/WyxJnT0mXx5sbY7T+1E3VR2nkVqsCp8b9wQ
	 wkWxmT4R7CD9t4J5BTcq34FhvE8TtwpQums/NHXJ3KWvadnFGLdTWESJ524lqfsAzl
	 NRQ+30S1HpTsZn3GzGncV9WzO++86gAob7s4k7g/KIMYsSEe/9aObedCDpqBpiWpZQ
	 jXsi0zJpBZ4Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F4E6ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166382045331.6845.9579537032803854747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6f156ef264951d376f19eaa6d9265d3afa574412b51962ebf909107f9649a1
Date: Thu, 22 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663820453
