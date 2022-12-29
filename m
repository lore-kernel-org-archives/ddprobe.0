Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58011FB4
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DB69C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672311087;
	bh=sjRaWLIjZf90mA4DsSvZWCmwQKdMkE7q9OsuU3ZOcP4=;
	h=To:Subject:From:Date:From;
	b=MGxVk2fquxO7tfT3ynqdrWYywzgwlEobU+bO1x3AK/niG3J6vqG7M9SlQfwNEoFAB
	 D74N3y21xGAaAuqtdq1hBGrkmN9YGlriJttm/WoLo0Ccd2r1FmgCcd0kea6q0u6Hj9
	 2kGQh/boNIl54Y+gfGIfoECiAup25Mwo+LwIgmp7vztKRoDJfyLep7zixxOwO70F7L
	 7TFt5N42zvErD7EI1KdYgdcHwfD+sOYgHIIXTTydoTHDsSOyd3t7W0aXSgaWYSPAmI
	 jKLZACO/qeRdDdbspNRaphROn362bFOM72aJ+ptj5edh9/z19wdJ/DY3OWtpZ5wRG9
	 yVfnb0JXJbHCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7044AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167231108744.30776.11371243617965000902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16496f89e661f5547ecce8b202845781c371528e2c6c54a942f96e852c13775
Date: Thu, 29 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672311087
