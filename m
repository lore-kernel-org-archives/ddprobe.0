Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6463A111A3
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 15:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFC9C433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 15:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690384328;
	bh=a10wcVbhQxU6g+gdEZsB/NagcfAWHs7pHVLPEHWuIOc=;
	h=To:Subject:From:Date:From;
	b=kiQ9Xo4JH9hkjmyNJ1rsGz+/vV9I1vE75OzjVsce+hbG+cCI0djai5LdVDosTG+Xq
	 vq6jgA+9W6aIIV3r9GP9eAdbLDTx/sh9ElsxAGCNtof01O9G7tyrmzL5N6BvvGJunI
	 Kpd1Mx/UTtAaOXIc78hFYbEB4IQilkB/MCoGfJSlj+u0etuzCqdQ1WOqNhuRiZO417
	 /5ZwOTDJLJhZ5fStfF8zdG/dFO1QFhpAOqPvhVj6zOEdf48WJV7akwdlEpXng8en/X
	 HljTcSf3y2SpWOqo6/Fy/+ePkQ1Q1U8qFqbAWMCcnBL+BLZqfYL9Df3eqliVZRoWYP
	 3JWmOJKTS4JuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE150C0015E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 15:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169038432870.8753.15573426721048878989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e6c2fae74fe0b5470f50b56f583310fb87aa0eff2f392bf764ab60f1ac3ffe
Date: Wed, 26 Jul 2023 15:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690384328
