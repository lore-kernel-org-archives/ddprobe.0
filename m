Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E783C1D
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 11:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A31C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 11:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661600452;
	bh=lZ0bd5UqSt9B5jFj49yBIxudHOzl6sSHB7W21DphBUo=;
	h=To:Subject:From:Date:From;
	b=dmyVB/hXs5iwQu+1b6Uv7VwQMx3pTqjrk7GFsHAELv7N4rl1/MGtXBgwLvdsO09sv
	 vcswrgqWBJ6cZ6+/xlgnRU0szQE3rW+1XXU55EHeNraKNWf9U9oyPnVw+uzVsyS62F
	 DELvfr5a5kiMXieKU/rpawWaPIEIAqNpZJZFiYTHH2bhlXnhHa6BY5XZqG+c6gmrRp
	 uNucQi1MB2k38a7Sdp+t/AmxS8hKh4Ml+0JUrXrt4Pv7w3TeRDWfeJ7TOsgsqGFwf6
	 lfxbbrCKZw9lF0J9oIssA2AmSPQMITJ+riy7PW9rIz9v2fROR6TWPuXQ0LqiNiwmpc
	 HhbvlRwlyLHYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E1DECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 11:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160045241.12060.15935326842429270804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e2d705089a8e844a117342b601fd63b63991067a66c5767fd8dd9731c7faf0
Date: Sat, 27 Aug 2022 11:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661600452
