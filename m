Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9053033B
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z++v0YUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85CBBC433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699462696;
	bh=Od79q0MyqRZstRaiTE9M8ks+8FYcEKl0Z0JpSgM5KA0=;
	h=To:Subject:From:Date:From;
	b=Z++v0YUG8fBQQuKRhtVbB1xEW4ch71tgVPW5N55uafS1puyARQTNwLH/tWPOuaZCM
	 SqwjRA2OKsg/ILfsfb+Jef8tnHA11wuPL/gLsXtCR+Wr9X9CMW5t3p/R7Y6SPUfipx
	 y2wPjT8j5OK0rqM4XaGMd8f3P4DA/vMPLsNFwHh3FTUVEidQpL32ivgai+JR7ef7c9
	 SPZ0MuYNrJuCf4Uywpr5x64+zcr0KtaqIV/x6/1oBW1HlpgUDGZqba/VYk34aImBI2
	 vM59Lo7RhpIjSKMY4C9p8TJhwR2vBs5aIfeF9doVvcOwf6WNohG75fj6NJvfCbUInj
	 sUEReKPU+ZqTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B368C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169946269642.17290.11091806040977552078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5f4c9785c451ef3c122813ae27d2bf407696ecd19672c21961e61430bc2cd6
Date: Wed, 08 Nov 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699462696
