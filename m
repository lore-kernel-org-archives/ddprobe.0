Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4B11378
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 13:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9111C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690119128;
	bh=tYsqwe+j7DlkxtNoRW9POtc2zNgYrudMOtFIn7JrSCA=;
	h=To:Subject:From:Date:From;
	b=p+cGttd+FyNJZJjDyPFSUDmM3jXuJoJa4gL8v5YeV6lCMGniOUDCuh3RMZfRhikbV
	 89kIABVz40202rGoEfVqcTIPFIf86kDTSupGDQwKpF7XUxu12m20wXxL5sAK+Z4ihu
	 1iO9zL47S34H0bHie8geoLjl5wk1mP1tb6IYfby2hKkiW+Y4q6DliopDpmNnDvOoBk
	 bdM3ESw62rbvBFBe6ZRGnarCsqL5T7sggkT8JKZS1zpIb3l7yCFyoEi7zCSEnRK+r4
	 jnntKwBhVwHhZ9Gqppw2wFMsIcbEdgP+D5T0YtHPhpEsBheZFeb3WiASEAlefnZO4x
	 CFuA41853ilTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C1BC001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 13:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169011912873.7575.2853643476886494143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b41f2565cbce60204f631da858d72b72561a0876d0c9b5a4dd589d6c5d88c51
Date: Sun, 23 Jul 2023 13:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690119128
