Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3C323A5
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 16:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D130AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 16:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685896145;
	bh=u+ODXaDkCPWliN66mSiEO4KjAIdbs0bBPcNCkJoHabc=;
	h=To:Subject:From:Date:From;
	b=FwlpY4B1btwM4+ounHpHWAPmod1XsTEbsdgfeVd8Pia85g4trt8Leab/7pMBKWiAC
	 PK5wQPohuCLTYI0EATGsSI33WAjdBZNx/Rx3498DzeoOTqbDqXXxV+3SmYjLO6c4eE
	 H8RrqWBxgmHf5QH04QUD7miDuO1AtEELvXaPnpIn6qFQyYue28k91gWBfW05pYYPTs
	 d9pnFmS0LLlyIFBqzikJZeXE+pv7eKpKt2G6BNC6KyLN2P2yLxJLuG4DuBjPn9gG3g
	 HvcuaPdGowv8scLI460QuLOBxY6rO79S0tyKGonpbiwTNHGlX267iUPiLZZmJAu4ST
	 8AzW7CJ8tsKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D1AC7EE29
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 16:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168589614574.18084.3738983130295955437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca7bd9c9f89386a02d48c04c79c5926423db8cb696531dcdbb1907313c67571
Date: Sun, 04 Jun 2023 16:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685896145
