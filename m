Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92B4193
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CB0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671038487;
	bh=XlYzTyPbt//b3jF5JEkHE7NbUpL3L10t3Y/34rs++ds=;
	h=To:Subject:From:Date:From;
	b=c/nIU4hxhtaLMEkI6Nz55AInmUPYhaGMdH/ksKR8Zhuq6yFxVsT4rb4nEX1NvrDuC
	 ggydzgxaSy5O0j4TwpAJIJ5nGvLLjTwW7Q23giVcRZ4seceqhdZf1A0JVLlt2p4yBU
	 0r9y1PA+Wy8diKzzo8mWDrx29pals6hG9McL3+fcbV4iXVLvtPhnf/t91CpC9s58zZ
	 kZz/JXXwJ0XKiHpkEZ7SA+Tdqitz225rKsrpLd0kYpfcBaUm9mUXw+hvkO0RACHvIu
	 AprEi5+/JaOqqD+eQ+xgZxi971wfAToQVwts/1ViA2q24uhCZEzLPInkc7WgoO43W+
	 ys30PTUeWz8wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD3BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167103848738.5815.3766611431564202960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9bf39be4195e0b88f709a03f49423bf7b11c2296257221860bc0e33f72eecda
Date: Wed, 14 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671038487
