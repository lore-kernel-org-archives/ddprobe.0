Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C8D53B7
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 10:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C52AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 10:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681208526;
	bh=cLX6/XWmB4qyuTz7DtkFOdbtzq59NUOmf9Yxn92FIj8=;
	h=To:Subject:From:Date:From;
	b=jxJfJs1ksxAjIekxzXaUCp6MZhG6HRGObNBfwtbgmNCdQ8VHycWNdQQuGZn6WTh+g
	 c7PHqsszTCcvVeVkqFiqf5T/eP5j53+J7ei4u/dChgOfVgdR2sMbWhpgCU1hw5BT0Y
	 /GGAqpyjXKz+ndTM2L4RMKHefzHGaKm47Hj5obKgj4kGUmPqD2SQ7IC04UO4TDmHDY
	 erR1J8bx40kVP9Db+8xdE9Mpb1O45BLGuLCIHAcaEfQ+TF6p5CwgJyjqijcEMhfFkU
	 /FwFfH1779JHUYiS9GATrsVJ+E65ddqWNu+aLNu2gBE4TJIlQ373G3pj74JxbeUqPW
	 +0qN598nIY1dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2648C76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 10:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168120852591.23492.17134015304776689997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe568238f4e63399e6e542c0af54cf2ff8ee8a9e54584a4b7a6c1d018bba6c05
Date: Tue, 11 Apr 2023 10:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681208525
