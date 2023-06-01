Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EAEB23BD
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 04:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04E84C433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 04:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685595246;
	bh=lMagETJ00i3zOSckbnMcIC/KQBIAZeDIr6BltzQt+b8=;
	h=To:Subject:From:Date:From;
	b=NQUim5p7Wel1hn5XJSEnWoYnJj8xRznmFIsV0sBvb1ZC3vf5ZMEj3lUs1gIVvI73h
	 evCZdMwqU7/QIeZgebz7XiqZVQumwoK1Ld4FRIXlJ6SF/zSvMzevUP2EUba3Eomvot
	 I5I1wEbVPgNPin06ec+q4zRRH5+3B1WTe/xU7V50ulkj9uQN/Tk9ScQEG33HgGeZDt
	 XHXzSGGtnhjsyH4+OpL4Xcd4aG9ukJCTlypkIFMjJntRtFI3B++WvgclLfqL78tLE9
	 HP8200NnI5tcQovidSwCO5P7hX2CaCkqEGK2AEjd3/XFIF7vJiBMZIC76CyTkRQil6
	 CMhvbuMDGbFAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0E5C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 04:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168559524583.30616.1191175193779092855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe8fa47f6f5a7c27d7c7ae0a54b83081d9d913eb4defe723326b2622f83c58e
Date: Thu, 01 Jun 2023 04:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685595245
