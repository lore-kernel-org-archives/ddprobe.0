Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C471857
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 870A5C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670751687;
	bh=Zfx8DaesrZwdmAW5wxJdJt9AJz2D6CogdYIZ5zVWVN8=;
	h=To:Subject:From:Date:From;
	b=UpBmipyvQZpGESoFFc4ecXvzHCjWlG/w9nwOuGbSJgcAYM+wIZjzWs3uNSzhVY2Qw
	 cWQHLu+GTmvAlzkQBea5w/BsfZLabodE1l3AklkhcUxuMrpkzwMzQmrUZP4ZhgQDxy
	 P0BorB7aBeWYImxdmgqa8rnTi4I2STGHTKzhSazdgC501CoWZwTqsIWsV2Mm5VUp2M
	 6bhu1HdkxO9gzx9WqxGCNzi1BmE4+yM74f6N87wMX+bfVbjg0PRRzGktWBW23K7bO5
	 CbPgeXaImu0Ugbhv/SpJRt2koU9jouHUHWrQ+qGhI09teH2c1t0C0yM7m1kglPZLPl
	 IzSgruWAeZxsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B310C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075168740.32664.8817627978606749162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3070429f8afd490fee0940a0b2b6c08b0a66732acd47382a270c0240c4208c9d
Date: Sun, 11 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670751687
