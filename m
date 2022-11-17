Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27AB17E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F5BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668665454;
	bh=4ATUec6gIu2bB4yMDl9/41Nlme15GheuwU4++umSwsI=;
	h=To:Subject:From:Date:From;
	b=kph5tJbAKKM6mSakPtxF4moOtGfsJvClvU/BZS92iA74frjTJ+snthl8yI4DdgfQ+
	 H4MlI0WBU13sAnbGigTw1pG4Jk0aLMGciEgOBuQVoyE3SU0g4qusJEokyY4EmYPUgc
	 KCCfQZHKNyqt7XoamR0DyO7UjTSseB37yDx2yrepJjjrD9+AxFZ7XRQeHy/4WasVXn
	 1TysPjUFUvSQ3iQfX0E1QM0lOPnf0IWts/Kv1Es8+UJhLxC1STVljYcVqjaymVLOU5
	 zkTiEcwM6EwEuXktz/BebpJMr7TFM53Up/F5BAG+lsph3y9yzoPjEFc7WopwWd0Q/l
	 jQq44kgeK65Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52544C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866545432.28596.17903961296889956591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c440a498ccf2441c4048bae1ceedfb8650169e2d993c51c344a623010a9645
Date: Thu, 17 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668665454
