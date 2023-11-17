Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF33541A97
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhfSteXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80244C433C8
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700245096;
	bh=RO4urEzdIpNwRUJHMgOmFO9FHTsmOYqDPeIfOQxzraI=;
	h=To:Subject:From:Date:From;
	b=DhfSteXVLOmo5XpLOhyU8CLJZazmov2VaL/iPqEeUYFhNvtutaXkuwXDZjwSEYeSB
	 0RWHwpGu+XhayN31xNQPhEGfnnq2cbUsfmiCwPpWDA7gKyZNYcZ8LDKCKr8221zPNn
	 xRcQdQq1pijZHGvPJnXu8tp2iwJ2FLK54nb0ueCGFKDA4qtozTbgVRySzccW957yGf
	 z0P8dOy6rQmGDUb4FoAKiotcqPSp88HLO6PxX5HYxJWz90HPTPyEzqFZTJ16PkVQHh
	 +vMUj4joGejCV1YxKR9lP+YL+G+ef84rCPaLkIvJxjbbDtl2z6h/zrn7cUnmMnp1WD
	 O4WCL5JGpEpSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665A6C54FB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170024509641.17350.16901678482081788205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3407e6b0bde3904d7cdd452f999fdf15ad60e62377b4e6ae5f1b7ab129262564
Date: Fri, 17 Nov 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700245096
