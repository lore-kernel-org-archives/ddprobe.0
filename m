Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1797E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67246C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662381053;
	bh=C6grgfoeqEpUoVS6WTif0rJH9JyYOV/qjeeWMeEmf68=;
	h=To:Subject:From:Date:From;
	b=t/7T2JS3ofmWHI0JFrSfz1IBWtou1dZZcdOwF9FB4B87HcKPf+Eu1mTwCphrG9TtG
	 akxoQY9arVLAwiKAEgFb5vMmKdQeDxeDf0BjqgavGxNvJkMr5fGrueO3Err8O1Alzy
	 zPzMIiY3iH89n3MR3eaDpxRymBsTxJin9S5YmYQUna8jBJloOmH9bKXBdcA9mCz2R1
	 ZRo9Y1/BJBn2H3G8s+K83ElyP9XtVDsaencP1zt3PdTovl6cA1jFQYC2iEN18XfIUc
	 YU/ei7L44Pytp0alRK6XvXUoUW8t6yqqDV+Q2ENT0IUbxGlBvXKTxXdTSS1Nypz6r/
	 4R84XNkaEYrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE69ECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166238105331.30216.5651338848587344843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa2c5a90b725bb0f0011cfd29ddd99fce23a7e4bf539c83599676d1248cd7e0
Date: Mon, 05 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662381053
