Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1A8A31
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FC0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674607385;
	bh=aZJi0lBA6bc9lVdNZc+MxAcI4R0EvP4/a0gGd5dCENY=;
	h=To:Subject:From:Date:From;
	b=lNMnM79SqO/vrebUBmz2NofjYzXMmJs3nzDOWw61GQCOHPwqYTolQIyNBPC+mVCdd
	 frRe0qQ8A+ukFE8JnFozLw7GbPdLnDVDQM9yGlAi6ToWBVwDrmDpazSWoLAdh9BynW
	 P3AQXyYcFnY6qjpdaTrBTQMp4vPrrUhUVfPKCUoySk4f0dqOz56JHpY1IMd/1G8LtX
	 liu0ArUdJOH38M8qx8V2HU2KqTLLzBBd3yqQGNrfgVWDcHKaKdIMew65H92N6NTJqA
	 7vllEzTnIIFcTEJLvoVd+S3lx4csnhnm8bOvr3JEPHinDafZftxXt2X9Q9HlmW8NBK
	 xgRSmFI1acepg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51A0C38142
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460738577.1725.17521270700296345314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d489aa9d928131f2257e037e3adc8d9a6e17456615e7e154f0afa64c5a911aa
Date: Wed, 25 Jan 2023 00:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674607385
