Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564B115BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 08:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2F4C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687509788;
	bh=Qwp2hMNyiI4tDApb3MrGYhSTBTULKyFYff3sBRwbiyQ=;
	h=To:Subject:From:Date:From;
	b=OfgakUHQunSw3Ovprlp11yzCuXQKT68Dl2eB60T1byv00uE15dfqrdK+7TrdrEkko
	 uYzC4JteWlrJygxDycHCp9NMN3UNIyq8Hcbwppg9vx49pGFYaIHemYjQhe3vG9LPJR
	 V9IDYbJUGm8b7b9DrPSuOIgJRIexh2LJ7wVqtwGSvGlZZMHNOHdz/zn3rd3QmrSnbr
	 6tCXgh2Kpt4g1IYIkEcE9gU1oR4+E2STlCoUApqXxAceSSCKNaH8mXhV9NzhpYiTdM
	 CFN+A8axxi1ArOKZ59/NsnaE6paLZ9fME7FVXT1H91qTw50D9mL0oIOGtB2AmNWzrO
	 j64MwD7/Ikk8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB4BEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 08:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168750978871.4488.2237851045279811053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aebcc80590ffb82b262de41f901ea89655d4885c4c598d8b2c3967cb279b0a8
Date: Fri, 23 Jun 2023 08:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687509788
