Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99E433D4
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D34DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663767053;
	bh=sK4iPEfKkf4bDsLG4mujZVv3yGr9mRKu+6FLbx2T6uU=;
	h=To:Subject:From:Date:From;
	b=PLVafgLnyTkF8FTGvkxABDPjXM+FiM9agcS2EvdFxrifWHYwq9wssQRg+9B41nFMG
	 5qISV6xi+l2GI1raAHR3o/UVUdW77BdhRMfC4yj6IS1sdVNrM/x8eF8s2TZM+p1nSu
	 I2L5zuf2b4vcGn4iwEdUnvKoNP1ICHcZJsNY5cWqomOQ+F1ZFyChpvbO4JdDCTlbLA
	 l7KyGWRE4fRXic32er7F7tSbW1oqtM/GODKx/XO5hr3FUNnqI97Xs095DGhPm55bUI
	 c5iYf/x6x7ojH52aSuu3dr9YdqTM8eUGDwxvPG0VuaeL5NDVnlq3p8CZJOtonIgXiW
	 CB5/coO/hC5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56742ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166376705334.29782.9902145502913931866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0862a8396aa1ee0b016564c618dadb0de9f55e30c8efe3b3ecb216fb3c3a1db2
Date: Wed, 21 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663767053
