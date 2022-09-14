Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A0D3D62
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E162C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663167653;
	bh=62T2Oajzz4o59p8wOguTuovSrz3gseQHRsFaRvu6beQ=;
	h=To:Subject:From:Date:From;
	b=m2VSyJHdhiALLb8n/IwVdmmGmTZk5ffjYETQPlId305vA8RYUBVPZybBh5mHYeywA
	 2qN4Ou4mQZ8hdK6hlpb8OSgLX5uS60q8AgZSIFoHfikOpdcqwhUj4piahtQ64cpgsm
	 V44VWqcKbMFPpIpwUQ/qj+Q6apMSlFhfLzdt5Gkun45Uw9ljVrfRPNHhEurMiDoXzX
	 YmeZwXOeK6QxkW0ldNx4Ki0YkdplYwhPvGSqmQbWrLA6lafGg2A1/ZAo3b8jYBUFIl
	 Vnd12x+/gb+9bG8B89qC0600SxamOZG+bLITgd/6UTXKAsjkQANdcK9DTHENqoO3rW
	 o+bCtIbU/I9yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5251EECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166316765332.24469.10152023010665376817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecedf950e842a1c8755c5165eaa45216240b241cac1f5aed4409e4929b1c89be
Date: Wed, 14 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663167653
