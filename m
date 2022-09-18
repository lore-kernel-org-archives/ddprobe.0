Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC6180C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC47C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663510853;
	bh=DGJ3SHaf30wvDkuhiMlo0CBx0QTdzu9YlpYh9KmWOqs=;
	h=To:Subject:From:Date:From;
	b=KnRQ3i3fnQh0nBUODsiWrmzN37+OVcg2n7lXLW0sM9tU3B62EI3iW5430Q0a84YIZ
	 qroAOkGRbKC84NcbMk/jiTP6NZgClJPPXpAqdbVqLNg0h5I6asjeO7QZQrXJoNrW9c
	 aic7Y3Fm4Xx0R/NGxzshvZ2w/v/bzs/tDAao71DGHJEh75u1tN+0hVu6diwLJuVOsd
	 5URYKrqUDMSctMy8XKwpOEZcDy0Xd89lbJhy2+kT8pRzubx5azcHNqxjVvCiQ/HHQJ
	 4S2sjz5wLF2l+2W30vTb/KVUDBTF0hH1wCf2ywPQFRAd2B/7USDjPcGObaqLRJSdoE
	 uFttOxfhbhlTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5225CC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166351085331.12840.886538936533028386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41394807ff911912a1d4ab7284aaf64ff4302d3b27fa28b3b427a8a6d3a46589
Date: Sun, 18 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663510853
