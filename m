Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C24290F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73996C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668031254;
	bh=Ejp14tCekLpCTWfC7u05q7cLP2tZh/8UL0Lz0g6OU+s=;
	h=To:Subject:From:Date:From;
	b=KUkegPONLpY8UQ/oKNDPivcWvhllvf8k1BKnrOasLd8MoU50KOc8f8mBPlyp8idU1
	 chxIsxuurFC3Z9z8orPqwtjw5P/FQOpOdEcsbnNzlqobHqGuXBVONlP0lZ5uN4groJ
	 kJ5bERVcHZru0Z9Jr9XE/BmOprF0xpNCrfoCoQKKmM6RyRJ6N9nY5DM9LmCPIlB9jk
	 GdMbm7n2R99FAnAQinnXzBtp7P7hDCYA8nIaO50AHgU39BLiB5O8p7+X9RuKRZmTUW
	 gpTvOM14o8xQNQzFpoJtnpcAQ4p7QPMvajoXL+4JKT29ZWNSFMB3n1szmKFhfuxbtv
	 f5+egfdUaRD8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5431FC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166803125433.12347.8021216491399357830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dd5939fee8f734fda366a9f6c4ec7ea5953e898f02eec6c5fb7e6aec2e9ffa
Date: Wed, 09 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668031254
