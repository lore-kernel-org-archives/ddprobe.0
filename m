Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2C1180
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF6AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663303253;
	bh=3Hq36NA6ywne2s0Tcy+vm87z/S8pCDhMpbEdP8F/w80=;
	h=To:Subject:From:Date:From;
	b=Fw48tl4QjNfdu7rM1oBGjA8CDSg+683qgCc5C5Lj1Fqoe4FTubKzbk/tnUKOwUU2q
	 qIRknLr1WdzYxtrCYwQV393tM/5BO5MVKzjETHy8WIs7hb8vGYf/nYG3Ygx3Wt6DuU
	 85mc0ywKnKp9DlO/ru/Xrqb9rcgA0VPne0sol+gHn7NT3JZPW84olfzpVccvGFqVIw
	 +xCs2bg9S48b08ZPk9+IsCI/OzLxWg5kLIYnWZ17B/NkrO3pZLOr4VPJNS/2zYlavw
	 el3OhNPqWUpmA7cSFgccEwWFrRBYSFuoYFesWh6v0i041NCVT8WCxqoToMk9j9qD9f
	 i+sH+wsRTtt2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D5B2C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166330325337.29294.9030246814724339553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98433495d7efe1b8596b098b556eaa9037aa3ae7284aba8ba5a074f249f4107f
Date: Fri, 16 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663303253
