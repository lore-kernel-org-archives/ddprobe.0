Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FBA28F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A02C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668858654;
	bh=IS3W51JAR5pLmug1Q0sCiEfF2i48hS9ux6i5l86kXA8=;
	h=To:Subject:From:Date:From;
	b=f6vVUkYxePtH49OAvz2b+AGhriigk2WhYeovpjUe4jS+FyC8dMs1QDFc6zyMklER6
	 LimsLnewsqm4nQQ3n9HJVCV6yhcwAJHoYe18zDQwyT3xl93kYMrhQDPc1zpweuAczD
	 Y7dobpkNjMPMXzjmxOv+L+cypl0fBl1GXn2mjBETYbWa21w1OuAtpnEtHi10nguffF
	 1GtWxeixet9r7l9OFj8GdQCiaxgIvFhct4VkFZJcbtrB9uQY39YqJ2/n4qCxNEyvDx
	 YPr0EgwJIU+V3mIZJHrTaepfaQxoOu/uBDaIHA8ThtGLRmm0yJgqDeHWoA3d0sPhLL
	 7e7woDO+yf4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A4CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885865432.27290.6317594060313624458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea78df26b79e55788fcaf2f6c49684d80a68addd6bb0bf898f106148586523ab
Date: Sat, 19 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668858654
