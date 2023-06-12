Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648C518AE1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 10:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35D2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 10:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686565385;
	bh=Vcj2aioPszJXaq1gRPeYy6yHeE++uxNB3cE6Uce4cXs=;
	h=To:Subject:From:Date:From;
	b=ArY6GWxuzC+JX6CSKZCJKO/dm2ZfhoDafj75G7ilVenpLE/PVyeETxVF8B78wNi2e
	 roauXrHTJ+c5GYuMDjE/I2aGOH65MZSvfKcoH6RZDyYkdw3erqmCwR3c5LxQP8doVs
	 /Cu8yoP/WklEwZYDu33ByjZ/80L2VDZd1/vG6U81ouKeHsf1ftzFiBFDbA2svwtQmh
	 qucw6P3EMmcmGibwT2QLS6iGAxXiO8nqH5WcRbYAoAajpzYU/9UZzF0HAFdSGTHf4F
	 OkI8MCki0QZs7236ukGTZLfMr3gtNpC5bo2K6ULalmgJ9idFrP0JCG9q01C5t5D65J
	 XhG4bvm2Rshug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AC3C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 10:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168656538573.14612.2790978165779156506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da84d2c7370a958b2d8e42eaa8a7159a41600f7065d7641454d09388ee8671a
Date: Mon, 12 Jun 2023 10:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686565385
