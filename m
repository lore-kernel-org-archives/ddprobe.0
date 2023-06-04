Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7731A23A8
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 11:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6335C433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 11:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685878745;
	bh=QCkdaqGQ3gp97UsrWrLjWSi9VryK6xIUNfBdUg+yaR4=;
	h=To:Subject:From:Date:From;
	b=VY1e2fye9LRDpoMZf3myzN33tEZFQHnu+QKBUg6G2VhHsnzcyFWGzs7PialB3jkCS
	 +fBCLCfteMYyVrAx1yJ3ZCmSHMF7/jtzHCPu2Z/LtEpLhNFtui3TTB6XPnMSAL5kwR
	 4Cd9xVsEeOtnCz0fpB75JMz4ZsCq17GvL8Ri7vMyY4kPk56hSEBSuDGYJgXFN5k25G
	 32io5xao2F8p9ZrtX29n8rsVKHwrDdFTRguqQxi4cXkWVZdS978H6Iq1L4sm3xRcRg
	 CpEDkdgV0daa2xYWw2l0eHzkmOyVVPnkDk+M9Z3OMehapPED4TimBTSbxfujjsh3dg
	 ZbHTWyugDhC3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50E3C77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 11:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168587874579.23968.314383700810444238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c679270591d5dc1c450c079dd3f6529dacab0da70826d858b976a101dc6c9111
Date: Sun, 04 Jun 2023 11:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685878745
