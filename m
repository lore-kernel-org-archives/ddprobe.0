Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56A55C84
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E474C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665430853;
	bh=pvfFQaqc6Es44eoAohXFtLNAnFyotfLPxdyQeAbdcx8=;
	h=To:Subject:From:Date:From;
	b=g4RQ4lN6qwrKkIOMmDCZHd5MRjRSKvb+1MdtP1nMrGdxyAjS8kqaouUgdUlHS4d9m
	 b2h1Z0fxutGzltsesS7eTeCCv3oGphzaWTw+bscWZEd0wcMUDILUKGJabI1GeL3OQu
	 NWb3GiEHuNSTx22NF/DHNeuF8fWVihZNTq+XLGrTzTSv52NsTxlWdXQp5/bSL0RdBl
	 vonwO3+bikqhZbQDvzYm+Q1p4C3lDttiKsgbw96yuUkr5A3Ptgr+XLg4VSTnT2C5qW
	 ZRFSJDiXzF4JfxASUbfCGhQm7Too7qbjWc1ow9XwoH26wprF9+fJYL9Y5puz6bAy6X
	 io2gxWHa8fWdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558F0C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543085334.29084.2767515017203162118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882b6d46a9033506e440affe17336f864e074c1a788df9bcbb8911049d83223d
Date: Mon, 10 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665430853
