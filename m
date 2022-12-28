Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BC410E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E3CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672222287;
	bh=oWufL8pxLbSY15+TZJt61AEn4jGV/6HPnlXIoGkrB4I=;
	h=To:Subject:From:Date:From;
	b=KZzdeBMBOCqI57jKliwCcn2cyqTYj4NwwK2oeEP2Az1WQU8lDyyT6ZoJ18qlXHWoM
	 TNp3AL+VXZqJrzrAVq4CNhiA1NnZuT2LbDdnHMlQrLqeF6PNsttwA7LLyWXFYGCxL/
	 /DqUrMlmyRR9jwaZ4GFnhzIcvOwni0uLsVMDqfDQrRZymJCYHMKbdybWh6yZWAnKP7
	 lIxw3WrViJ7OA1EAkotBPyqWhybzoenPLXZ4y4COJmc1ZUuB8kwrJUQZkP14w7rjAS
	 miq+cg0Yg/qS7C9EfoE5aMpcIzRgI0uFiHbgPAaH11v5eC6L9IqgLu03V292S3sXbt
	 hQVQ3Q1Zdb+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4A6C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167222228744.8141.9408374782379706177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37bb072cc282da7176cce6f2ebf76e331c0f8a9188c33f9b191031b2d2b93da
Date: Wed, 28 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672222287
