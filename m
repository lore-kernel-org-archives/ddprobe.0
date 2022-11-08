Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6A88F78
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73258C43470
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667910054;
	bh=gIBLF89XDkTYjLGlLDwjj0AtJyxEp8hA1vJ1TZoIFfc=;
	h=To:Subject:From:Date:From;
	b=tgAVPAcLIUZ2dTDBuYEOtHYR62ccZ+a3udBPjQYkR8k1vg1v7e+xt6ywUyUodurxh
	 hX0YfjqB5yRI1lhKe0YJyHUkExmAdzXBwOtTwSacBQdlNk2ua3IEKWNUxA0E3LZBJl
	 h2zAzjLFxRW/cbeU/Pf9Eb6Gbuua8JllFb81Fbij3Eq7mjNVXA97nGDYLVv1AQmrLa
	 qaEZFL82LzZhXqI5DfZPOvN63HxXojOVVj8LXmjRge+zVShHhcctYvwuS2BOuZZTJD
	 HR+SpUNJNrZObkLdPhIRNmx4h+6OgelUjVxDgIOZgIylSvGXqMfoG0jZ29uXoBnUXk
	 FxVcSUC70MWpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59E10C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791005433.4602.15491808770411848954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0099d66703026acd67948440aaf5cd5394016b4799a2b3b31e94aff5b25f154c
Date: Tue, 08 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667910054
