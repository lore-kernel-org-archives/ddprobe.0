Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD29AA29
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E8CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669795254;
	bh=9JLiOAaNe/+QnQlOrHTqnBjrrMyeEneCNfFEczirLuk=;
	h=To:Subject:From:Date:From;
	b=h9YpN7Y8DSK1o3jKc18XCrgRibTtel45AVcMeZ5U+XbZh2iXQFOPZEsnxnvwKm3HW
	 UauwD4wXzib6FIN5dcoV0ZkiXHkKtmDRpj/4qz7tNHUMjHHJl96HM7LM/kWVDQiVRc
	 HW+L2vNr7gfXXmvaXiLNrsXo/rk9db3MJgz57P4bLOg9ONGeLN65uYSEDEvS5DDUzT
	 7UTqyMD75ps2kR5XKstjlP/6TEq6enjpkhQqEmW28EQ5wUF1h49FxJHT6T9p6wm3vG
	 22DVAOqwobokS1lHqFt/fsHnyPSNyZLKiCu1xyvizQB0Ut0TC221v164EN9wq+a7Ug
	 WfIlntdR4FIOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58922C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979525435.27484.9368999308010255246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ef5fd5005df0097bc9e9debc20aa25731ad42c41c1daa55a451c42da7dec33
Date: Wed, 30 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669795254
