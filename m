Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36AA15B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83693C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670894487;
	bh=ndlNEVLEvbutNVVjvdAnoMcc4ge8j65tzHgptgG/Dr8=;
	h=To:Subject:From:Date:From;
	b=f0HpMCQAoF8IjLZoRWeLfBcb0QB+7xqqsvwNfoE/YW59LcgOkaD/DPtnnbQ/0LSS+
	 re6+W3VQOIzxd94ik8o6xg43YLknjHKrTBvvEBeoqBx13LHcgy5dJhNunxWvHnYjh9
	 TolyidQadREO4C4cGY+8b6BQHoU8lBSPh/XiUJj+CdakIOyzZWyQ32WPGIkkPT3/0v
	 y43yK+iG8eDwDEZtE8RON5+7ie9MK5GtFEIwMGZBoTakpGxNDGzH9uUkQstECY1J/3
	 Gbcfbc2y72YA0JlqMJmrqDK62d0Z9vuy5XakswnMV+T8nmN+czyYGq3w2BxFzPAfI2
	 u8bGldzqMeeCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672F5C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089448740.9985.8751309851068924138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c151542ada10602bcc10250463aba73082cb9aebeba1b4a79308df663365358
Date: Tue, 13 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670894487
