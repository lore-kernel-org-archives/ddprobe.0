Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E18FBEC
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVcCfwCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755FDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702455496;
	bh=govx6BLnGAdUAxZ6WnwDAqb5exvok1texw0GA/L2MpM=;
	h=To:Subject:From:Date:From;
	b=QVcCfwCpxth+NwGlrp0fnPSckWr4pfDY/arDdpnT/HWAkd33ZlVQ+jKGvU79VCcu5
	 F1r9jShTjepJEIh/2eOkW597a/aRglmajWKdvBnmnjkawp7poLvdti+Qi0uZgduOd0
	 HFPqkkAQKbe0xmCEquhLM/JjXhrYm23VIAZsYl0GVbd7Nj3zQ5w1+J+6RjF2XALWl4
	 mIgOqEDBDecE2IJlPTf0JsFuEvo1ysdRZDxssdMcls0Q5Hi9lK187hhJkpGuBAg0V0
	 TTVjcsLXWNkK6qjDOYAmi9BTQifT1lIGefybZQiceMBzxFoclPXEa4ij8nVL6fZRVL
	 3snKVxkN4lQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C674C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170245549637.26071.15152546267435645190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b54a9fee703ae0825bd58502bd0e63e2c4172cf63bf3d7b22fa00df1ed293e4
Date: Wed, 13 Dec 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702455496
