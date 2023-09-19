Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E772E38BDC
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE095C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695114308;
	bh=ZRT5qOw5Yyxj2Olh7sCftBV5h2Vn6Hk9MHgzmGPtoX8=;
	h=To:Subject:From:Date:From;
	b=SmuhqPclGMS27fOAKy5qbnhvXy7ElHXSeLamatcBV7jcAqeEVbI+zxj11FA9aRlW0
	 oeb3VqDbyeDZcSzMJ/qIsyVvZnG62yxC5des+osTfmhXO/KarMYE4egd1btqrZzri6
	 lm18y33Ea9iVrBQdHjRXV51DJy06vUxYpi0lt6SUnqHcvPpXybUeGktzM2BBpFnKbz
	 nubMKRV8uR0SgzdkAW5j7pnIthWgnVj7WzEjFWORT1wiNoZWg/ebddXaVzl5cLBSu6
	 D2LBestX6NgWxxz26siIR085JLzLKhgn3NwMHW3voF/jzbA9912E9ZK2+D5nnS2Xku
	 RP04D2vMVPPaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CD9CD54AB
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 09:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169511430867.30644.5754363839642146519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2749123bcad2964cf1eb0e8fbdc78623647502fd1a8c36bceeff659723176eb2
Date: Tue, 19 Sep 2023 09:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695114308
