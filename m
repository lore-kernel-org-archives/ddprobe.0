Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049DC63DC
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFwH8yNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D146C433CA
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699598896;
	bh=15PMvwe3ayCUigt/l6X+Qw9aCPyPI/w52tiiUtGnNJA=;
	h=To:Subject:From:Date:From;
	b=vFwH8yNhejEWGmskbA7NInj3kEEkB8WdNGG9SdlXWAs04zlq87Gku4m/jtjXuJ8DU
	 tkmcpoin7KIf2o+33VLdTw95x96//IUq4/itFsVhEkglDSGUbML9bcye/l1reldeBu
	 dpCCD7kgg3Ymggyz2mcENGhZx+QEi22poXdUiYxbF6IHCgP0DBydYu86W6ToM/moNW
	 mnkY7E2NSfkR6vexpPQBbF/Povb823zC97/wmwvLnGvOMCF0R5pkPSy6Mew4aIHuu6
	 RZfuS6Is6u2CDvXOsvIfSGlYgt/slOoaewtBFqmYj27KMbxD1hxvDdtoWT5cKSrwIO
	 iO1fWsYHwncUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D741C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169959889637.13950.16601086388558726724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb546274f7c7d2457c29e01d00889ade6605121f0d4af610701a6f087a51ced
Date: Fri, 10 Nov 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699598896
