Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F75418C32
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 16:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED29C433C9
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 16:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689869528;
	bh=QdUUrdYPGDrhAjjE1fJSpQZif2R9AvzSwmeOrybemw4=;
	h=To:Subject:From:Date:From;
	b=GNyeLyrcaH762VW0T4Xw5poY3Ql8MD6q2/9wowBMcw8c80wTZbFJ4DYiy6ZucL0OQ
	 nsQtIIh00757sfXnHOwHU34EDTbLQulVXT2aW9zn01aUcw+22fO4709ALd8H3DVA/1
	 7rBH+E052O+U1sUHXJXH4LZ37kf76NL02AYiAxZhG2j0t1e+tSd375U77u/OognuSs
	 iZt1HqcYWtuFE6nvVkin+8XYAXqr8NyvZUHvsltoGwbEsQuBLr+DjR2jVoIU+BeOYT
	 suPjfvr5fQVJrZWQX3d0zF6CGvgY2kOw+WT9OqQjYco8KvBP+mgkMYV4lO3QYacGVD
	 CaB+qLCjVWrxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD0CC0015E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 16:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168986952871.24570.17977393817279748747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bced5c3934edcec63154d06d471b52131476eb9651fbaf7bff587293ecb411df
Date: Thu, 20 Jul 2023 16:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689869528
