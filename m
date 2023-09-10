Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABD21FA5
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 07:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7512C433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 07:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694331248;
	bh=x4Z60xY3uoOzrC9H5hR6UPpSXZbWHFdA7q+/h18rVXI=;
	h=To:Subject:From:Date:From;
	b=N5cd7vizVpP7yDS162qJem1DXvxlgxJzS/c58RTe1+Y5YBCbe5tiQKfKjUbdQp4pC
	 sy/5TZhTtUehPUWlhKceLjEZCTAPF3fSPhi91MYyw6OpRrspwXUzwYtYhKqOu4ANZD
	 Uz4aNduVLMVBxqmED1avIfCte5bstvyTO1mXUtV5Y6xwl7NLyUv3ni7o1XK2AwTUr8
	 WtPciGnxZj2x/GEII00R1filNy7ET0+EkhKNmbKW1Uf//J7Epaww6No5RLaRmo1nW2
	 PH32YynbuNn+OqjXqoyqf247O93HTovTYvc/VW3WDUTMbZIszxBFS2/bLgCQ8L6tqW
	 DRTrV2J4XQhHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6037EE14D8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 07:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169433124869.551.15803354520789959797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42ee3fe330b9a1fa6b77d65280545b8c450db82c3aa57c912fde3e3453f3369
Date: Sun, 10 Sep 2023 07:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694331248
