Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C02369
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 01:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12D2C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 01:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694653448;
	bh=0txLOR0sJKgB9+pNEYN8gLVhzn/JhOEwhDSING6KJL0=;
	h=To:Subject:From:Date:From;
	b=gPC1rlCfBrVXXIKNCo1cuSDN0OMD7VgtG0l8wRoPyf2NovxisrajG9kYOvefLNtZ8
	 25c0iVvMXTqa2G5iHFwJmNd0uPwmhekg/ygxRAeKG1ZvA1EY6KtRx+hTDh/2wKmso0
	 RoaXklO+YlU63iLibbye6mG/zEMMu0pfRbAo64a/MyeAZlMUv9exjKTfMuvOgvsaZ3
	 Dap00f73KPjpj++1IKvBx9RxFOAXIVEfkDosx93nCjcgPJ+lxkGAQo3coLWpP/YR4F
	 NpgZaIZ/EQNkXZ5j1JLfGfefQ51HlZxBvP1p8gGwzLxEBaZiwkeb8RnP8gz3BMY7Gh
	 5azIGZXsgaWzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B154FEE0206
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 01:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169465344871.12217.11857875766842636878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699e91b02bc7c7bcdaed11263d6f64966d2f8a2cac0528280795deb9148868b7
Date: Thu, 14 Sep 2023 01:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694653448
