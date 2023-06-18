Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563E9184C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 13:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3C5C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 13:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687094408;
	bh=ubMPq4FdM4C7AZSvRQyQ91eFxGllGx7QH9RB/3q+Fus=;
	h=To:Subject:From:Date:From;
	b=J3x/51dCsEYVoZvQQLUp16r+DSX7u69iM27w4Nm2lassh2sfjzda2KfXyfF2yXKk7
	 LEs9LgdSJ/jgJ0ABBxYz8OaVJRVs2NMJJLua+4pz5hWPv6Gk0TA51XT7ZAENd26LYK
	 uYUs51TxHxLU4HM6NnscvhPB2iur1McfpcAzkPMZ8ddpm3SPBJAzpexPlGKI6kFutn
	 JoQPC+S8iMLi1J0qIvqbPla26zvFprWIHc2CacOnNUt+HPw0okGWfnbnhQYNBUctwF
	 J3KeJP4YpRRDbYWYEtDyCxTXF88k3tkmS5DTvkDT473zyLUyluIw6ZdifGmG96eRKo
	 Tspv18aByGmKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B05EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 13:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168709440866.26351.12227180087212966668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b81041c574254b3f23be12eb5d0c8af2c483d2db7a70b2c12a5b0eeec2e8072
Date: Sun, 18 Jun 2023 13:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687094408
