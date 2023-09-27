Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6079D262AD
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 18:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C75C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 18:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695838568;
	bh=FuG3c8FAX7YkA9WQmmSOUrwMz6TFr18BxVUKm+lJBjM=;
	h=To:Subject:From:Date:From;
	b=IIOU+Ao3Dr81/OeJB6DZVhX75ZhWVizGKDu6WRlSgg9GsfrPyWqeOg+KR+DGIpSOL
	 cdKmVN9rVxd6y2KFhffqr8H4+ZujUB044I5F479ViX/FZs+Tf5jOhff29MxL26I4lI
	 4ai7Qx/I/FpxAlTBwNGsdzRzPIr6XuegUh4DAv952V+ItqTrsH5W1WbtgLYTrjhX3I
	 HqfyGN5Db/LWyjIewmZ7h810B/Gbinos5Iu8yQETPxpyyaEo3DRmQ7lG+m/r7OpfOc
	 xLks2uw7TJxNBbQgmbCYqr5BORQArud8TNVN6k5NemhTUEkKZkOxdxsp92Q5Kgr5qC
	 uUgX/rPgS+XPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B577DE82CBB
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 18:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169583856872.3735.2404654179140855673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950046f03f463cf805b7b4ec512b8fdd452e5a18a359cd7849c6b9f1efab27f3
Date: Wed, 27 Sep 2023 18:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695838568
