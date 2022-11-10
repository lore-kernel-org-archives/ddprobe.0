Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A0520F6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78731C43470
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668087054;
	bh=jK93riDIOcTMVGhmpUAnJ4SXtpB9nnivZzFZZlCk7F4=;
	h=To:Subject:From:Date:From;
	b=KzfORiSDoc6RGBTphBRIGTs7ll1CElWi5aIQ6FBRQvaHXbR+95ZJQotD81XcnA6fP
	 B9WCOhRNq2R5dfnZoejyPLct/QrmolxjR+gjYnvg94r/Aqr1dDEyl+PoNTi5DDzROb
	 fEh+i5AbnTf9zHuIgbalPHwrSp+XW+7m3ZLM/navEcVx6NaUrVsk5QsxsG6d1cqirB
	 b2P2q/63GZVsmVHSWZL4OOMfl5L3SSYGJOr3zK9zFMDx5Pdc2QG999ZGwCaJsr6ZwK
	 J/RXhO1NYHCYylXX/CJhHFYIQpFk9tfaeKqHBpk6PyVWujDotPuzcQT9SxbJ3oNSKH
	 exFdGjkpS9Wlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572D2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166808705434.30990.7669460616798381994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a54d472d33f7ce776b2a56f0cfc03e21a6eac3184b2e8e04a98689949c48d2
Date: Thu, 10 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668087054
