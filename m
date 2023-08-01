Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536FE1F952
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 20:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58A0C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 20:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690921928;
	bh=6wgZSr7zZMwc2SXkb7i4xIrXyeGQujuvy2aWy4epEXE=;
	h=To:Subject:From:Date:From;
	b=E6o7Nqxn6upII0+neG5yP/uJ7LwkpUbNwueYp39f8oOUYl+qTYZp3ZaabIAkcjLP4
	 W1Kr0nBwMUctV3dww/nFHbupzTgN7ZQ4IUrOWsTNNEHp73YhunlAzZolWyjEnCvryf
	 YozgC3yDw0hkPaChlIRb+ScJ7dTGim71dPmJ+MiOj6WbrPFgwcZqiDvSDspnR1CDZx
	 OQ7kLz4sf9L1FKH4FcQLqnTeMJlL7usJGM2uqNypmffxPgLfIsCYm+4MFVbLvLb9YV
	 kphf9GoBxYUR/d1J+RLGhQQKhrc81bz0f8FE4+Dppc3lG5eCh+v1ErJLfgZu1Ye74W
	 7/zp354fzEuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E28C0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 20:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169092192868.16924.2175920840609901197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c1cbdb57d8c67a04090c9d1d11c628aff4f587dcb68f254d50982ca319c5a7
Date: Tue, 01 Aug 2023 20:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690921928
