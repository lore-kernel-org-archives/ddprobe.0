Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEDA748E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83560C43154
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663693853;
	bh=cxFqilP+2Mn/Qwz0aJZCZBd7ieA7tr3lQzR9+HAXme4=;
	h=To:Subject:From:Date:From;
	b=co6vBOyo61lqGFQq9jupIjOkNxxywbu/9miDkcP9DZoQ3wICKFDhUUUgnDaY4UFQJ
	 Mr3zBPhYO4AFBZkZg8GKIsIohLxPJ38ejdRWXTVhT9wqj6GRYgD+J1wuSeGfNO5hh2
	 zFQMEmLFDm6ewlIsaUMQZKPCu/edbpJzVwWbhm98q78VinjIuP/7ukW1Qlul4Hw3hB
	 9tgktMunibJS/QwQQiZRbVgXYC+qsw3W29IYwX9J9TKnbQUdQBRaHoOZ0cfwVirCzb
	 NePdrbyP8wGMnP/4zOkZc/BwJKX2LoKRYlbnEngkkNYtwM3ygKuAsjgZlts+1ADeBt
	 mcD+VXms5lMDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CE0C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369385333.338.18030527613100774509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a95f6c3feda6be8beb19d73193dfc64d1ea6c2070e50fc05fa783cc448a548d
Date: Tue, 20 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663693853
