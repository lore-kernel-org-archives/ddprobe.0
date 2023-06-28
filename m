Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A23812B60
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5031C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687995788;
	bh=vg5kuJko+Bcs+/48lwtPglgcvzijggp7GxZ9aPYHPN8=;
	h=To:Subject:From:Date:From;
	b=NZmJu7S5tNISlTIsMGvsjKHTi2uGZnqwOPrWi8HND1CtCdJFUQ8LBC6qPCO5HBDK5
	 E8E6KwaP5EI+K1VQ678VgX8fmbbf9Mogilb6glsZc7cGzt6BIus0Y738QP1TV0KOqx
	 vvvL9GBmjf35GxbZiIzRPSbz6iE2pA/UyiCh02JRmGgFIrOhCt+osrla9dmjCe3pw2
	 YAV2cAcMrD5OpRk/+jmyz/t8HxoFDtVILRncAdjxcKnL4EpYyVT0ZTlFG7yh+ENgTb
	 j5mk8S+D0hC+5irqb6lM2Yw3/YBa9BFvvqVTIyInlhvxsvUNJ2uJmvtV/D9mMEQl36
	 nNwNRbfC8tMag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5349EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 23:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168799578870.4638.8730186122006188953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a55655c450104c641aa4775a2598a04bbeac52d2b2a964aaf32abdce63ca40e
Date: Wed, 28 Jun 2023 23:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687995788
