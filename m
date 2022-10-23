Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98417B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B03FC433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666560053;
	bh=hzdriwyLi4q17ad3c/JQdHOlXZmuUykTOmRNwkzL8qQ=;
	h=To:Subject:From:Date:From;
	b=jwyG04jRwPwQY9zgA4KwV6Sgj+HNs8ti3bv45TimoApuPqJCjA9jlLnsWtEs3ND2G
	 wsSagDdyzQbvRxkJDcXBQs0TAEz03XHqbP6SFMDa5JffxzslgM+74Lo19KFyYusEFd
	 D7qn0bzMvtAiGNOc2JE3HBoV95ugvd2k+zSsZvibVFpGIpVdt0zVUxCvaqBQWXap7n
	 dyAlHq06DPpfcPJ5udRfe2GHQ3TDT3F5hTqi07W8QV2q9dGOIhAdMyXdqKHo0BP7UR
	 4v78LsoIop/ULEFyXSd2ZDQEx+OLA7kKiRjAqJ2Ca2O4pMJqlmz89/YVkoZYVPnrZF
	 QGxEq5dXlG7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510B2C3A59D
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166656005332.32510.10410740305042301413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe666567720f0c9319a2b43248f3b9591d7e4f74d108832188945a864dce80a
Date: Sun, 23 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666560053
