Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670A61FB35
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 23:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54CEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 23:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692832448;
	bh=0gfghi1MHBxbGfh9gm13dpwfIO3e2qE/UWEfnIajplw=;
	h=To:Subject:From:Date:From;
	b=qkeGRPQ96ubcnMxbaLv6pKUKDLa4vHaiuOw3kIzZiSN9rysAtRa6wXtKhmuK84k5x
	 J5OU6hNl327ndG7zwkjKF+TQAglcS8dh6BpA2HGDoMQ+tbsnMxrUKiW7M3VGij1Tod
	 7DeJqBBXrzd+zH9budB4aQb/VvfmhkUveDkmRSxz3+jjob7tI9N9yfYOG9EcUXUn4S
	 qistdhqDz9Jr0viguJ9GxDF8NwUJ+XU3hBgPp49gqN1V65YSCiwIMKxZTQ6Iqqye8b
	 S97vhPU4lvkHNp1tdLE95wkTbDVwN2eOn4lF2xFLYD9VMtqldFsTYG3QkDleJ19mSH
	 Fa6y+nkkZByNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FE4C27C40
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 23:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169283244867.10643.6767733428516838004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9077910a4a762c75f492ab5596254168395c1f5103d6675b1e834327ac917f71
Date: Wed, 23 Aug 2023 23:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692832448
