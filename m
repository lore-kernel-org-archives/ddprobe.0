Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC42C7C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76625C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661624452;
	bh=B7G/h3c292OrloAszftflqnP9Yw62NIBFHYUTHPMGIo=;
	h=To:Subject:From:Date:From;
	b=PzEVf21qvdqdzgqsw/VDA4Nnl62QAYTiT/d4FCSRXPL9eYnyENkflYflN0zUfmunC
	 9MxmBdAZc7hHeauT0HsS6Zh6L364BALqHtewDKppUGTSb66Os/Wu33NoYjf6mZFlVk
	 CW86BG/sqLOjyJTyeFr4E+S328rjxICTwK5lPNoC69HsZg6E/abt3dtUnxhBCKTAr0
	 M9xrbgkLVlLwNGppKukPb5xAh4AmKvg3SSK78earFCpo2kV3A7+JwCgi4u1fsA9fwv
	 DTInCXwMTAYbdbazTDFGU/0OWNKPkxDwfBjGXhSgeiB+eBTd+idYXJ9Kkbj/lfUEoX
	 iGLJNrVy9DF+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5693CECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 18:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162445232.31683.4310562407314793166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04485b3c008c0f089a9794f935fb5724faf1621838c2ccd1e794cd4310c82a22
Date: Sat, 27 Aug 2022 18:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661624452
