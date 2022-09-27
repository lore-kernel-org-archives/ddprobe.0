Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52B04C96
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762F5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664321453;
	bh=V6zO9CTkbPBQbhluCNUMC1ylHKpRfFZf4xkrPCn76fc=;
	h=To:Subject:From:Date:From;
	b=WmmwWtleh2K6eDBdSFMBwNYaWHzc8tqI91e9kMtV5zByRTvvpgzGNAJ/dQtrExvrc
	 CDWAvANJkP5yOKEwlyo+ojchpXYCkMAZwiSXfqCOYx+2UeD7BkKPbpl7NSAQhN2oxW
	 khMaP3mjOyNmbqZ3S7OX0b86hUKDkX0h5fFEdqwRHGKKlmDVMSo8CflyGVGYT5ZScd
	 rzcRIA6gVOQu1/wqUWEzyrMd/BqSTGurCl9tkhFoFAsVa4nWRstDrTchLmBDfOabrr
	 CRItZ9AOnmwSBALJSUyKyYd0KQ658KZWXcWuUpixi/ar2sLdes3y69mut5segpIFU2
	 8ngzwjODGlWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B4BC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166432145333.32667.18292874353463113452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec24a3f7ff62070f714bc957222b8a14fe1dc8e69ce6e51076ba5e6a47c40d9
Date: Tue, 27 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664321453
