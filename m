Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A958AD0
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8416CC4314F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668547854;
	bh=cm0QmsKo1Iw212DETQ3EZKbFRVtTXGuLOZ3Wbpx5j1o=;
	h=To:Subject:From:Date:From;
	b=uIOfihJvUVmO5uhwORth1id2HRW5P8K5Iye2alQLWrB9qF2yE0FtnthfIt9TuDMdG
	 qTmwQ5vh5/nVufGvMEysW8iPShhVwm8hgqGN0NzSk18gEFmD6e9wuoR7Gm3QUChlPL
	 j28n5D57s6pkAquBQfn3wy4FfTULo9n/qIRDLblEkBpKTxXmxNVsbbtPBrGLxJYUoX
	 Uct6DfEtH+Fok38+ohY9hC9iuGpZyzqvKx67gshmrFHOoKdC9UXDv3kRc8FdxTaiNf
	 kOWX5R0WlQS2zio6sPlwidhN5jq0YgBA7e0bLh3K4oJ1qFbYu4dio+MdhshJryO24q
	 g9MJWyuMkHohg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65500C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166854785440.4638.9275810145099235096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d2fa06f3d66f29a1ed433ba9ebecab77f345752158b127b93243d511ae663e
Date: Tue, 15 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668547854
