Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54011624
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 02:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC783C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 02:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684549686;
	bh=t6KKI2gHKQeD2MZes6f864qhBEY2nj6rEhmpMkloUyk=;
	h=To:Subject:From:Date:From;
	b=VhLHON8PnRkm2xHGsWTalJ7riYxYwHBym2tiWt2itZG+g3iN/VsRzh3XOraZEJ7tE
	 HjrZ6/YewoJ4RAdJt6M7BjnlstDxau9oAnILALQxzvyW4UaCUBtm7UNByWeaRFTEL6
	 AToZVUHIr39r5xC8BzOi3ZnN8m7sYeizSJoe4K/NE9ccYLF/elO9MBE7yn+z2swO06
	 IBc9LEp4qN80R8vAtl7N923lqPlAF3wJTNn0b3KmaGactezF7Koj0xQQe2zH1zaiV2
	 Qa36BATKQDcMorBA9J42NbFyh23cfiOjrgR9Xeg9yEWyWXMqNwV9/XCQa6GmmGwP2y
	 QJ81lVx5ECFpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC5CC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 02:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168454968579.32243.222372099226136508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280750f324d03b175bb15433f67680ec473a70cafd307da2d3c864c6e5b075aa
Date: Sat, 20 May 2023 02:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684549685
