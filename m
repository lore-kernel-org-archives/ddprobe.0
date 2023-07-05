Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627F02F38
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EB6C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688589428;
	bh=KEM1mHQCxJkmyD73ctPoY+TFg1rTniPIYIgygyOXOfM=;
	h=To:Subject:From:Date:From;
	b=tkxNwAVVpGJOw9X4dXuOBXWX0+nhi6Jgb+CwKV/OIuBJwEw3hQfYhIrY43KPP4GKn
	 Jy3JOy1xbK+mFJAi4EE32LzZ5H92KZCNQLNjk1gGqQRQrLD+KxsYRaH5pRkL2EnbV0
	 u1s62X53NzXOReMY2dtD+CQ3+ft/sM77oGvhoFRRKHD6zLkqikVtCdK758swFblSgE
	 Z1IHJXIxTofjjmHSZhjAUrFBMLosZ6M1Z7VX7neIw+6OFk1qyTrUmKU4df66epH6dc
	 kA1qNNlPHpdK1MOZ6jFYmc3avEUjMH6cs84OhmEIEQD6IGX3I5H10PhTSwITYnrZvy
	 tXyLpvgtsWt9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15C5EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168858942871.9765.3374351857742678683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0a711d90c1ba46cc690135dc9164260e3e5218cdcbc9067a996e547c94dc8d
Date: Wed, 05 Jul 2023 20:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688589428
