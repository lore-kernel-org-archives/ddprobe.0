Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586262F32
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 09:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1203C433C8
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 09:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696152968;
	bh=4KCWDhIrGA1eGPvB7S76lGFlILaiWeIddFL/r4HFgV4=;
	h=To:Subject:From:Date:From;
	b=LXZFkbgmq5PUQN4wUwj2appfvtXWvg8tsYzWbSibI68Qvst5X+ZiQiuNAAXSHVUvn
	 WdMjJ0LC6KQdO6ij6QSuJ1cnEUjTkeFeamfOl6KwWRqNfdaD4U5qhcS++PRS2kVU97
	 uVgw+i914uv89gVholL+FcJmmacwjcXMuAOhh7iebFFdPfgB8FoQv9zz4fIeT7HZYb
	 f5AwL2w47dBO6kaN7pkwWJNj9Tlqr334cnJVrfNJTtmO4SBF+d1FmoSK/2qfp86e1m
	 jkSl7vYzqasyE0sSQXLWncBwPaehH1Ja1brTaN6F5Z4LyTrfkyGIvTqOyv58+/Jmti
	 uUHy4R8SFrV2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19A5E748ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 09:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169615296868.1814.1983998321007416619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a400e1066766d0045875e7d1e1fcbdd5a7f2729a6e8d50e10d369980b7228cd5
Date: Sun, 01 Oct 2023 09:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696152968
