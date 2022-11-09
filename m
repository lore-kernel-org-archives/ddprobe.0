Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C3C29B2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C70FC433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668002454;
	bh=F9pxr+fdICPzpDOgz+PmN5pustoS0yDUliYEafG6dB4=;
	h=To:Subject:From:Date:From;
	b=ilp0fwiasbCDIqlBx/P0iJkGHYiEe2aLM4kWJYMmfZbAIDrcC90J0E9MikAziKGfD
	 72FDmXXT1UrD80vaABhZqHapn3g8Uge4E0z7DQ/sN9YdKkpLwYuGsYpGRe0gWffVSx
	 /7i4LlSWDQ4bCX7AMMTuiyto4IEF8XxgPWZDwr+bd5+cg5bcVIylbTcnXJRCpFI9+G
	 G5FT8tIcMX1a9PtV2fjYKl4OcVDSuX8jBnsONfkdlxQKWPiC0ZkFuYI3RdhbSADrmj
	 8ddeTYZDXEEaDCKAMZVU6xKy8tqr/XwQhuu9XeUFfFaOLhbcR+NiQTkzFe0r2lTev4
	 DccILTxHsnOHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 566DCC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166800245434.2350.16064623959101682824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b313655f4327f0e76d76dd60690f23e881681f379ecda9351d00f0726481a1d
Date: Wed, 09 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668002454
