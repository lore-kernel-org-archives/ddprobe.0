Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA6F7E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 01:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D142BC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690853528;
	bh=peyuymmk/XDo7YDBKPUFne/94vZBVIzeuXyScyAo8nk=;
	h=To:Subject:From:Date:From;
	b=oCdyCZvKJgqCsD6LpuAmhYq2wLawJNn8zUHT1PpVcdtRit8BkJbOE/jAZR0g42eet
	 sBZuBzkBg8d2ETktDtt1DLAHehjQVjN25DYKHeA64j+ZsVb3k106tHq1qKjZXmpOx/
	 JAdxv6cSwCG3R15JyI1hFTzNo+31Qw8OFC32Um9nYB61teg7QgdnvdTQAakAIn0ZdV
	 BKK2PVsSf+pP19hXt8EvLU4sBHL4dlyceKpask4ds8cZuMGNlJqVNY7w3FOUdl9n5Y
	 xe3qnF6V3yNARXH2o3Kk4zVNEAvazPbJRf2/AVDQXArvhZfVtT+70ZIqkmO+2kWBKk
	 obm8FSd6pxCeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2243C001DE
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 01:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169085352872.2950.13321012417693908956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0019723c332563762cb780723fba838524ec63f36994da1e621b9e7358dcdf36
Date: Tue, 01 Aug 2023 01:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690853528
