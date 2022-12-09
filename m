Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E482763C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832A7C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670608287;
	bh=IOX9+tH5b3b5aXLydukdTZDbS7ULEDOVP141lizW+Hg=;
	h=To:Subject:From:Date:From;
	b=Tt0ilErx3f8BSUsNKEj8mTmoHK1GM6Uk9W5jDoW7ffIK/0Il8j1cSHKvClRw5lHdq
	 GMduHQ/9xWyL5Otd/snwfex5ajdSNodrgxN579ZkB66wUx6HcmuEcROgyH0scSWoJv
	 6DMyjUesidKaW772FuqTMexcPPIWodcK3tXS6ZSM90ba2vc+XBJ85+SBljS1eSxp0j
	 DtS0fu8c/CVGrCaSl/52V+3vNGb8SfxEKPfm5IPCPUt1gx/Lm+XX9sI8ZnZTV06obj
	 OdiXLPSfNztmi3CEJKMdRJtD1qGlKlMN/tUIaK/BAizHKcl9NIy1reMdaNCWvnAoq1
	 iFtd4KTZ6StlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A8A9C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060828742.10051.9326523178395257469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02965fe8c2a117f18006f7ef0a70994d757df2fbda9dbc13687b09ddad0ad45
Date: Fri, 09 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670608287
