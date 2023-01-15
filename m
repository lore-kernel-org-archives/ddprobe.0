Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2541A2D
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CFF1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673749287;
	bh=RFixS7Ws+1kGIjm9Tl/ANfWVgRgwRQEXpfoL+gVarpI=;
	h=To:Subject:From:Date:From;
	b=BZFk5r5///2pvTeUYFboloE+nuNGTff6KtZMZmi/o2j8EyXIL/OaJe3NJxdxaL83D
	 q2CP61A+9zhvx23NINVsTXDI9zj8nMOGydusUpDYDOsLgVcT2c1QKcNacAuUazTK/l
	 PSCgAAWwFUpRZCJKJ6u1cjJL5nEdAYu3TX4y+UPyal+kLVa0084phE+4TvrFJlqVq7
	 42bWMx93CdiiN/9Ny8hcAQeVyG8XdUB3+e1e5P8NJHGrVF1XeOTRdDqRvw1kKJxdjP
	 F6Cn82Zd8zASiG55fH04ajLwVEXeU751ksRA8DbDbGHsUWr9ljIOxuBpoXUOO7OuER
	 ilbGnnexUmBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D49FC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167374928741.4230.9022244281407097421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aff2061fba9239712c462d2550beaa387e8726ad8c9f67a01919107ab65d671
Date: Sun, 15 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673749287
