Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C9F7488
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BD1C433B5
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667487654;
	bh=BfDRtgUOWcEIJWTO1g+y5BHzU3boKlFg6DOmOJmJoIk=;
	h=To:Subject:From:Date:From;
	b=hYeuFKywUs6PGHZbwufvOIyJLJ2wPjWYz7HvKFwcSInfd19LYnfGx84YWOd5JeH8f
	 V/pIuueodAc1tiBBieaYKxMD7GTMcZe1PYJA4C3Fm+FbSw+X7/Y38bTzgAhbrRJdjF
	 A/4OXmnS3QOwcgo0moBpNMg18H3TVg8a0DODu/6804DgY4LRqPqHhKL5LzpPWotErA
	 8hzFQoFeuUNBLTLspTJjPe5yNFePk357mZ80WoBEI9NLT4FSo6PA6x4vUmrF/EAUYX
	 72SDzNH/gBkIWppReu27RfqmIbbIwo4HLkE9TvTmEwJEfElhjihHsN0xzdSBXh8rVs
	 WLqSbqi5Bz+zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5901BC433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166748765435.23086.4547081232845625246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313480a8d1cbc30cd1c924d0dfeb0971d2ec3de9aa97ed3f4459b85dd8d95856
Date: Thu, 03 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667487654
