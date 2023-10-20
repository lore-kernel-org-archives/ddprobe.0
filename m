Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF921DDDC
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5Ek+r0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9787FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697816296;
	bh=2DYtP7r5OyzsbXK6Qqbu/ePCJ4EINK4x6MkROpvVIoE=;
	h=To:Subject:From:Date:From;
	b=c5Ek+r0B4zZgQrVaLoD2vSAz3AUW0kBMLtTOYDGK41SsZec70Gpt19R4+kHDOWT3b
	 jn8AIAsv6fTnzISAxqVfqO+/9Y0NLWXwmSZsdZmyZ9PiuKRM13k8RxOGFlOSDrftSH
	 fbXkAcY2dpx2FHPjGLrNS6byqGUpH7zREq9woYwGNl8q4JobohMidO6Lv4pwmW33er
	 Jq7aCqMGulMbKmZ1zwBfSIAv3WvPxXbn/2YO3Xbl9VT0y+syRoTwXj3V3XtDUAeMqW
	 xpkgzzA4UAiciBsCvZidDXt3MyarvZXJYMmyfKsPqdDw+1vCs/yE2DfPjGLqZIXyBA
	 FY+nIYqYAmb3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C53FC001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781629642.3948.12149545777978328091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4cb308b8e1bcc63dd3d6d14f113e4336b73c992b831e39321874d549879741
Date: Fri, 20 Oct 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697816296
