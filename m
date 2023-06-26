Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95948628
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 01:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EADAFC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 01:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687743189;
	bh=6RTPBj5wiY51EayaaXZaPf0A/lIFTHio9+tIVvXGnSU=;
	h=To:Subject:From:Date:From;
	b=u1ne/a4U6rOg0NhsYS+uT3mLnDRittL4LuDmuAh+y3VdAOUNw5hQemt42JqkW20+a
	 P5wgU4stDqcwHfJLcO5wN91dDD6LPJt3eI2buKeDTulSr2aop6U2KhO291kqQ8AZeb
	 DVHk6o9W0jTuYswTeAFWv3UgbrgIIRIPO0WIE6vIJiBRq9vJOJOWHI2ZmYTGci3eh6
	 akoGHElQmCe/5/LG+3kCWQGgAtSysIFxfcps4sicQorHQwZCWMx5M0ZZrtWsJDycGd
	 mk1QpWu6vu64DWd9UUrIUyvBk1zbFNgLNtJCe4RhpK9DyiqebtlXAmMySxfaQuabMB
	 a8OI8bD++/8NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDCCEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 01:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168774318877.17569.13193285496583652097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903a85d2a96948f4796483c2ee1b93fcb5c3c0e1b4ca2f2305f21b01ec5618bd
Date: Mon, 26 Jun 2023 01:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687743188
