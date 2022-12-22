Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57CF23AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 984B3C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671747087;
	bh=etI/DqSpXeDNq98UgUngZlYWdMR2mCKjd27yOneB890=;
	h=To:Subject:From:Date:From;
	b=W4J3FF8cQQ0e1iBh79RcmzogPQEqzwryzyh9Uilu/mk7rAQ36MpZZNKDwLMMB0fny
	 W9GP3QmrT3ZLyXCC2TGLuIjGMOoG7x6j7KV7QjHicWzRSRJ9UziygjOUZZUmaj8zcy
	 t61hGzHTV82DaCDIGl4dXRnCpS/nZCOEdExMNmJE360L2RghiCprYrpPKniqfvAoXc
	 vbpMWGLKYGyVq0fIRcdA/qYYhcbX/T9zOPLPuPGXfloEgWJpx/k/cfedQ4LCgdkxtA
	 h28AzH2sZPbB4YjPxuyHX5lBQN4eVLVZpAXUdHEFqM6DI3LFfysg6YHiDcqxM9OoO5
	 Lv1QFVwMTPa+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EF8CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174708748.484.1974235645585809038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d960fbe24a6c088db2cf333ee279b0a80fe35bc47ed13d25e7e6071a584cf7
Date: Thu, 22 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671747087
