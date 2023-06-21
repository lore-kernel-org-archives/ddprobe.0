Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E777EDC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 22:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79E0C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687386788;
	bh=Ku4yiuH0uDgS281fRDr8WxHe74ru2ErTLIdcK1X1PeI=;
	h=To:Subject:From:Date:From;
	b=XSclUElJhj7ETVjjbld4WOdfmsx4mU992vQgEghqXHQQ2vdnssp8vr91iFjww8Wcu
	 T09goiWPlx6a6+fLUrnX/05kljMNWEEscNLnDcRxPH9XSAcCjWWM/Rzb+Apg/l97FW
	 +yrp9ix9KCNsemj49PZUTs/iyNPs/nHmrefrkWIXZbXO1bErrgmPB/l5z88mMVS4yt
	 98kWXkfG8pS3UF3NaCTOOO+XbBQk6M9/T8Xo9uiVrljmz2dywst/x9Os/LWHzaTtn7
	 rpPy18fvkMWjzzQy/gWKx2f4wM+pnsHZuazgnIifs0R6KqSo8dETOHReSKiqZRJvk8
	 gLMp+gSr1komw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A96EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168738678868.32649.6284064791801659917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a33d3e770627d50f20a77018e7536f81eb778f79cba6f2eff5dfc0f0bc60e3
Date: Wed, 21 Jun 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687386788
