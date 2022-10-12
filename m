Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7472321E
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70BE3C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665611453;
	bh=bcjzmSX2QRUuzpfG6HJUQjufKQgk2VP7ocxfe9MsMqQ=;
	h=To:Subject:From:Date:From;
	b=FfWzH3KWkCXu6fgc+ENmcrgCmnekSgjJ5aF8EYsDi3YpghZc6WBdPrpctpq1Bq70Z
	 bYnsKgFa3EgclPxJeuDPSMJBsAIQCCXXqxQPrigsx+TLTrrSt+X5f9a6NZXdgiIORn
	 jb2vho1lrUkbcVujE6jJ+4Xi3EY3PKva0HvmGiONKvP9cTvZhEFPcP8YKsVrF8DNMV
	 PFuzgZ8V1yWj5GMT9LOXBXPyKcaNeGA5X3LDxqx5BOIsMP8wIAsal84j9BwwqDtBLP
	 tpGd8GHaj6dt3Yizogg3xzStq4ej2hTPaMQxHk4ly/sjG379rKoKcE1KRF4D3dBhJe
	 RXU77YickaD2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55364C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561145334.7244.6551651315999571866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70f6c8bc7d400a1c021debccef8a1673186a0a070e8d5f71e77f3713f4055a4
Date: Wed, 12 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665611453
