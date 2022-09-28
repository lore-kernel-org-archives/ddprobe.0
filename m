Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C4D4C62
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A3F7C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664391053;
	bh=z50HPsIOwF9uP65xXvd6X9W6D55K2U0QU9VD4CWKySY=;
	h=To:Subject:From:Date:From;
	b=TDu5Ve9sio5Zn6VF0s+Mv51TnOHli7IwYoSTvtDlvQURg8pRoYctw30NLpSl5oVSW
	 e9AqVSKdShM1eB9UOLNIDkrozgTzVqmQ029aTKw39rOZyh5dNJUr9BV1izoe3uIb/8
	 nCzB3VVdjrJzWyUwTP5st6FJfiB3bvXZpUyPD6K68TAIAqx3tv1R9hFLWrML7KnxTQ
	 5H+7QKRKOAFus613xTWvz7djyhFHv6j1HH3sBBu6VicB7vqe8Lz5Glkxe58ZRuSYaq
	 KsuC4366mKC03G+/NFoPOL696mEVoy7g+IHkt5c7Q5iyrF/fnedzVYlFKYFqNFiglQ
	 WUF1Pr9waT4QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF2EC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166439105331.5795.3529170741895359135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2125c686eaefa64bc48b3174fa85e4815624b2de437136919b847384ef603d26
Date: Wed, 28 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664391053
