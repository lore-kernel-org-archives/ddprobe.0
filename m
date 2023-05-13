Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BFBEC4
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 04:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F24DC4339B
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 04:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683950826;
	bh=jNkT6dTRlGBblZWkO2bcfuJ2xR1jIMBe4LNWefCnjHA=;
	h=To:Subject:From:Date:From;
	b=NlmZoww4yl4eqsE8ZK+2HZ70wYUBNkfoK2ojpm2E1wNy3ihS7E71DjIvJCLg+YQG+
	 ATs8PgemSwwhVzrxcwZr3IpeH26BEggyZxqs3meURnB5OuujeLkVHktkC8gmoZ5Aie
	 ocaWin/Yy/k4OelyuiKbWdWyzYqqI+mQO0sIjNJIxMyYmOC5RjIVVgkUY09YhWKsSQ
	 3CqF+W5gAh+mAPiQnGZqzDhyN1QZFs6rd9kfQgEfG3FAGRKLW2FlfLpe7wcNykorlx
	 W+kBkr2dk9R4/obYAaO4+aaze8Zs4t2+lkcPtPGFcZj1tdG4fzGdfJOiAgeKPL3Qdx
	 7sgiLzF6/LZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEC29C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 04:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168395082595.11109.3564659609938981431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac870acf693e61b26691731a58af97d570924e94aefa1dda4945ed659cc61071
Date: Sat, 13 May 2023 04:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683950825
