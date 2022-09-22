Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F632560
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D48C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663879853;
	bh=4efAoa0A/pGI73MpGrv6AmzzRQ4jOQMRTKWFDBDkIjQ=;
	h=To:Subject:From:Date:From;
	b=l+g8CN72EdEH+BzxMyWZ8iEuhAOeVlRu0XVzxi9gsMMczBcYfXQLgrm4P6rkctC6+
	 ebWrEVubGG7YsVfCGtUsIJfTujlxt79GgVE6TA48bM+V2H4yt8FW4Qti3Pt/uPLSEy
	 frcRFxpxsHLc+Euhj9obP52WK/DR5x9J/x/DToLylkCDIbt6xdfH0k1YrsPkPPUP3o
	 s8bFytN/FGerA+Ql7rDTIMe41rvzApp3PBxa6M5CdC4k/2K6mMUAeQFeUg7t+0IiuP
	 RNHlCLbGqbzDxMUOflZZ2ttvhtRZoRoB2LF5uWc7p70toapcPyi4kaa7X4CJ5IYt+O
	 1Ey7IHamJlGXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571B7ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387985334.21192.2526661870646369450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0aad77aadb15c5e36fa7d9ecb5a832ab656b0fec967aec422e77b6a516f29a3
Date: Thu, 22 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663879853
