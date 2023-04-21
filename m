Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3889D28E2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 11:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E937CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 11:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682077745;
	bh=cSxsqkBtuo2VyA6MqMdjVL4WzCtyJPlbNqj1hX1E448=;
	h=To:Subject:From:Date:From;
	b=SFQTf0cPPRL7//EzmK0Hfuxl2DVS30IZ77NIaiuiPP4/dtFSfv0GaFfLSHftU1CCr
	 U0pw243N7r2onmTyxqCFM9OdeQdUCWexMb8igCrXoMPjaaPvMKxk3kwGPmAeS05shk
	 LC943MXvOG3FwazM0zSYPA7Bz93hx4+B9Uc2f0kV8Z9faB082kYiqxrcXkgfcWya2l
	 HSPA+47YuzGZyes0CkdH2Ag79y4bf+HWShWR9sHBTHpMfmH9qO0mTVwbl4xL9GAMKE
	 s0VTN4rdgeoCvGXIU2hLzGdIIie9zMHI6NtYxGM62V7HaH5sbzXpB/xG/vy4o7JSob
	 l+8j1PGcfYrhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C458BC77B75
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 11:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168207774578.30428.14951641828184745100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24bef964765a2f2dd10f007edb685c4b5cd32c78f64678f382c673b18a3e06b0
Date: Fri, 21 Apr 2023 11:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682077745
