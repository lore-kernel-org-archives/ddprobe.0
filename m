Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553912116
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 08:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CDAC433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696408568;
	bh=uklT1EhadxtdnimcCFJfRbQMki6FdRtC8O9MmA/NExI=;
	h=To:Subject:From:Date:From;
	b=iInCZv4/m5YVlsXOgz969aUZJf4DYL5p34dzrfOS+HdYHiS2LH4/h+6T+jnZCoBiA
	 Km6sQm6rSGH+Vi9sxFITCLt72jH+EX8qbW89lBiifzNOv6IZLaVIrFgGHnophyEkdS
	 RW17mM/PVeadoWKdvTz705J1GiGxkJmliAzRs2QqeIamXRX2wG4/2L7XTJgFqFr8qE
	 I4aMtzTcV7vETwC8ECgO3e+igRL1eqdXMUfC+qdaKFhQATvvzDI6/UQbi2ncPk+WoQ
	 CEf/n/bROFXRe3g96b+w1h6Jxyi3SSayhHJ3NH/3sR5TPYlzHL6qvj86V5b6mi4YT2
	 Eb3tl5Yc3srJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E66E8FDDB
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 08:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169640856866.8918.8973004200062484679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab7436cc3af82d2d7278cdad399f47ef358457966286b5276027742cca46eeb
Date: Wed, 04 Oct 2023 08:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696408568
