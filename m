Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3420C23C6A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 14:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB66FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 14:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684420565;
	bh=g4nDH0be66ugiIFbzoxDA4U0GCsBh5tGuw2UgEl8XsY=;
	h=To:Subject:From:Date:From;
	b=LGEgoAmyqFI8ohQC3uKysTNCk14f02aLsvIxGXVY6T+AkLhMpP837WeK9tvubahYq
	 vrmWzTl15RwWXjowFsguP0L4dd0gWK9MEu2qAwkBLWLBQKfRkilfIOan+asw6O6R12
	 f8kD1r3XDMx7KTk0AnCnGZsr8KlpeinpcG3T3G6mPXpppDZH8GlMmrovp1oLmKqD4w
	 SJHchb3KrU69ed+xlu8NpBnSKaw8kOj9j+ajmLxvpeguSChppXGr/aiLILNuWqsz7R
	 6FGNajGkA37oeXnWA4aKwF7Z3EvqPT7cLui9GUzSMMuLk1Xt7XKl4Yr48RxcaxQ3U0
	 L9pLCTFNRPCzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CB8C7EE23
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 14:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168442056577.26518.2295622113412789627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d6ec523d3d903e8b3cf8ee85135ac8236159bb1db080718bf44e58c866074d
Date: Thu, 18 May 2023 14:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684420565
