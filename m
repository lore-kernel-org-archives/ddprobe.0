Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C126D24
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7670FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663614653;
	bh=uow5tAi3t0dFnjHcFfRxJI1U1pSWpelv5w30ssDLvaI=;
	h=To:Subject:From:Date:From;
	b=eAywZVW1y+guEThDd4Mg2w/4WA5T1HduiLvqK/kVNpmiLxAThHqcy9RX1DRdVQthT
	 sUQVfD0/ybOuV2wIBobN8Kp8y5ZkH8wMkAeN/nTEdVKwuOPRLd8PocKiDSseqTmiTv
	 UTUn0tizI7LT0HrnYfCKNTp/nO1xGNoIyKFgjJ+/tm6blxOxQtJhjr2kPkFD8QH0o6
	 LHNPmZgX0ufIIn3/ZqCuGh5K1VRayfnXfhJllgluVCrGGBOjgaNmLTF3qBxF64zBwe
	 ON3Z+0Al4y7TWq8ysMbfSEsVTUAu2vKSbMTpXzzTRIfM6MUVZn7jkrN4FDAeBxeuj3
	 wTJ+pUdnnMTQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5298DECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361465333.2731.14973843034130179750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6705174284a31c437f6baef7a7de859db371fedc11d71a989bfd34d409c0603
Date: Mon, 19 Sep 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663614653
