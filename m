Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EED91C13
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 18:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0488C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 18:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693766048;
	bh=QcavSomDqunF3AmYrrrPqDVpIBj8gngWroNvRxOtMZk=;
	h=To:Subject:From:Date:From;
	b=j6gk77y5TkJ/fAYkpIReQkQkDXYerIaKBmM9uOszLHtEOxneldnEC8LY7pypbVF7e
	 FkagIGAYeDcwAylGQBT5hunreb+iZ5NkDYoJyJJPRAbxk7UtK7HRVR9gR77kkNGwMX
	 2T4z3ITaT61GWOaof0f3ewjv2wtsUxEQ9+E+6tMUzx3CBd17dajVqO+4FQzLG0hUMq
	 kTgdyPK6aIqZDb4DkTau3IX2/NWAONVz3/0ClK33V58FQOTyFTn6eu55284SZ5tIsp
	 LIf3JNtxT6ZwJN4UhxNOBHR66PY5mb/xkGVGnMgbIFyobwkVxy217cXiWtSoEhbI6w
	 BAhz/mU1EzbIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED28C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 18:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169376604869.10645.9196780161886532018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e826f11445702860b36bebd291abb8340340d565d1a430668269709c6f08a740
Date: Sun, 03 Sep 2023 18:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693766048
